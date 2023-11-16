function result = calculate_probability(p, e, i, j)
    if 0 <= p && p <= 1 && 0 <= e && e <= 1
        pSending_1 = p;
        pSending_0 = 1 - p;
        pReceiving_1Sending_0 = e;
        pReceiving_0Sending_1 = e;
        pReceiving_1Sending_1 = 1 - e;
        pReceiving_0Sending_0 = 1 - e;
        pReceiving_0 = pReceiving_0Sending_0 * pSending_0 + pReceiving_0Sending_1 * pSending_1;
        pReceiving_1 = pReceiving_1Sending_0 * pSending_0 + pReceiving_1Sending_1 * pSending_1;
        
        pSending_1Receiving_0 = pReceiving_0Sending_1 * pSending_1 / pReceiving_0;
        pSending_0Receiving_1 = pReceiving_1Sending_0 * pSending_0 / pReceiving_1;
        pSending_0Receiving_0 = pReceiving_0Sending_0 * pSending_0 / pReceiving_0;
        pSending_1Receiving_1 = pReceiving_1Sending_1 * pSending_1 / pReceiving_1;

        all_probabilities = [
            pSending_0Receiving_0,  pSending_0Receiving_1;
            pSending_1Receiving_0, pSending_1Receiving_1
        ];

        result = all_probabilities(i, j);
    end
end