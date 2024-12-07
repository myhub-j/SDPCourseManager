<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
        /* Global Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #000; /* Black background */
            color: #ffeb3b; /* Yellow text */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #ffeb3b;
            margin: 30px 0;
            font-size: 3em;
            text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.1);
        }

        /* Container for payment options */
        .payment-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #333; /* Dark background for payment area */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(255, 235, 59, 0.3); /* Yellow shadow */
        }

        .payment-option {
            background-color: #444;
            margin: 15px 0;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(255, 235, 59, 0.2);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
            cursor: pointer;
        }

        .payment-option:hover {
            box-shadow: 0 4px 12px rgba(255, 235, 59, 0.4);
            transform: translateY(-5px);
        }

        /* Payment Form Styling */
        .payment-form {
            display: none; /* Initially hide forms */
            background-color: #222;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-size: 1.1em;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            background-color: #444;
            color: #ffeb3b;
        }

        /* Button Styles */
        .submit-btn {
            background-color: #ffeb3b;
            color: #000;
            border: none;
            padding: 15px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #fdd835;
        }

        /* QR Code Styling */
        .qr-code-container {
            text-align: center;
            margin: 20px 0;
        }

        .qr-code {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
        }
    </style>

    <script>
        function showPaymentForm(paymentType) {
            document.getElementById('upi-form').style.display = paymentType === 'upi' ? 'block' : 'none';
            document.getElementById('debit-card-form').style.display = paymentType === 'debit' ? 'block' : 'none';

            // Automatically set the amount for UPI payment
            if (paymentType === 'upi') {
                document.getElementById('amount').value = '5000';  // Set amount to 5000 when UPI is selected
            }
        }
    </script>
</head>
<body>

    <h1>Payment Options</h1>

    <div class="payment-container">
        <!-- UPI Payment Option -->
        <div class="payment-option" onclick="showPaymentForm('upi')">
            <h2>Pay via UPI</h2>
            <p>Use UPI for instant payments. Scan the QR code or enter your UPI ID.</p>
        </div>

        <div id="upi-form" class="payment-form">
            <div class="qr-code-container">
                <img class="qr-code" src="images/5K.jpg" alt="UPI QR Code" width="200" height="200">
                <p>Scan this QR code to pay.</p>
            </div>
            <div class="form-group">
                <label for="upi-id">Or Enter UPI ID:</label>
                <input type="text" id="upi-id" placeholder="Enter your UPI ID">
            </div>
            <div class="form-group">
                <label for="amount">Amount (INR):</label>
                <input type="text" id="amount" value="5000" readonly>
            </div>
            <button class="submit-btn" type="submit">Pay via UPI</button>
        </div>

        <!-- Debit/Credit Card Payment Option -->
        <div class="payment-option" onclick="showPaymentForm('debit')">
            <h2>Pay via Debit/Credit Card</h2>
            <p>Enter your card details to proceed with payment.</p>
        </div>

        <div id="debit-card-form" class="payment-form">
            <div class="form-group">
                <label for="card-number">Card Number:</label>
                <input type="text" id="card-number" placeholder="Enter your card number">
            </div>
            <div class="form-group">
                <label for="expiry-date">Expiry Date:</label>
                <input type="text" id="expiry-date" placeholder="MM/YY">
            </div>
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" placeholder="Enter your CVV">
            </div>
            <div class="form-group">
                <label for="amount">Amount (INR):</label>
                <input type="text" id="amount" value="5000" readonly>
            </div>
            <button class="submit-btn" type="submit">Pay via Debit/Credit Card</button>
        </div>
    </div>

</body>
</html>
