/*
--------------flow of payment----------
1)paymentIntentObject = create paymentIntent (amount , currency , customerId)
2)keySecret createEphemeralKey(stripeVersion , customerId)
2)init paymentSheet(merchantName , paymentClientSecretKey , ephemeralKeySecret)
3)presentPaymentSheet()
*/



/*
-------------delete pushed changes-------------
git reset HEAD~1        //1 is the last change ,2 is the last 2 changes
git push -f origin main
*/



/*-----------for adding the same project repo on another enviornment-------------
1)git clone https://github.com/xxxxxxx/personal_finance.git
2)git config user.email "xxxxxxx@hotmail.com"
3)git config user.name "xxxxxxx"
*/