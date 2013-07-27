module AnalyticsHelper
  def computeDuplicateAnswers(users)
    totalDuplicates = 0
    users.each do |user|
      userQuestions = []
      user.user_answers.each do |answer|
        if userQuestions.include?(answer.answer.question_id)
          totalDuplicates = totalDuplicates + 1
        else
          userQuestions.push(answer.answer.question_id)
        end
      end
    end
    return totalDuplicates
  end

  def computeTruths(inference)
    truths = computeFalsetruths(inference)
    inference.user_inference_responses.each do |response|
      if (response.response)
        truths = truths + 1
      end
    end
    return truths
  end

  def computeFalsetruths(inference)
    falsetruths = 0.0
    inference.inference_clarifications.each do |clarification|
      if (clarification.truth_weight == 10)
        falsetruths = falsetruths + clarification.user_inference_responses.count
      end
    end
    return falsetruths
  end

  def computeMatchPercent(user, lifestyle)
    match = 0.0
    nomatch = 0.0
    user.user_inference_responses.each do |response|
      if !response.followup
        response.inference.lifestyle_cues.each do |cue|
          if(cue == lifestyle)
            if(response.response)
              match = match + 1
            else
              if(!response.inference_clarification.nil? && response.inference_clarification.truth_weight == 10)
                match = match + 1
              else
                nomatch = nomatch + 1
              end
            end
          end
        end
      end
    end

    if(match + nomatch != 0)
      return {"match" => match / (match + nomatch), "total" => (match + nomatch), "correct" => match}
    else
      return {"match" => -1, "total" => -1, "correct" => -1}
    end
  end

  def computeAverageInferenceResponsePercentForLifestyle(lifestyle)
    correctResponse = 0.0
    totalResponse = 0.0
    lifestyle.inferences.each do |inference|
      inference.user_inference_responses.each do |response|
        if !response.followup
          if response.response
            correctResponse = correctResponse + 1 
          else
            if !response.inference_clarification.nil? && response.inference_clarification.truth_weight == 10
              correctResponse = correctResponse + 1
            end
          end
          totalResponse = totalResponse + 1
        end
      end
    end

    return {"match" => totalResponse > 0 ? correctResponse / totalResponse : -1, "total" => totalResponse, "correct" => correctResponse}
  end

  def computeAnalyticsColor(match)
    if ( match > 0.5 )
      match = ( match - 0.5 ) * 2
      return "background-color: rgba(145,209,0,#{match * match})"
    else
      match = 1 - match
      match = ( match - 0.5 ) * 2
      return "background-color: rgba(255,46,18,#{match * match})"
    end
  end

  def formatPercentage(n)
    return "#{( (n*1000).round / 10.0 )}%"
  end

  def formatDecimal(n)
    return "#{( (n*10).round / 10.0 )}"
  end
end
