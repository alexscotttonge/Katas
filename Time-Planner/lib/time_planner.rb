class TimePlanner
  def self.meeting_planner(slotsA, slotsB, dur)

    ia = 0
    ib = 0

    while(ia < slotsA.length && ib < slotsB.length)
      slotsA_start = (slotsA[ia][0])
      slotsB_start = (slotsB[ia][0])
      start = [slotsA_start, slotsB_start].max

      slotsA_end = (slotsA[ia][1])
      slotsB_end = (slotsB[ia][1])
      finish = [slotsA_end, slotsB_end].min

      if(start + dur <= finish)
        return [start, start + dur]
      end

      if (slotsA[ia][1] < slotsB[ib][1])
        ia += 1
      else
        ib += 1
      end
    end

    return nil

  end
end
