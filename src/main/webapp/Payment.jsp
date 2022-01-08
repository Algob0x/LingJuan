<%--
  Created by IntelliJ IDEA.
  User: thomassanfourche
  Date: 07/01/2022
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page de paiement</title>
</head>
<body>
<style>
    body{
        margin:6% 20%;
        font-family:helvetica;
    }

    a{
        text-decoration:none;
    }

    .payment-radioGroup img {
        vertical-align: middle;
        width: 10%;
    }

    .payment-radioGroup label {
        font-weight: 600;
        margin-right: 3%;
        cursor: pointer;
    }

    .payment-tab {
        padding: 4%;
        border: 1px solid #d0d0d0;
        margin-bottom: 3%;
        /*background: #ebebeb;	*/
    }

    .creditCart-form {
        margin: 5% 0% 2%;
    }

    .textInputGroup {
        margin: 2% 0%;
    }

    .textInputGroup label {
        display: inline-block;
        width: 30%;
    }

    .textInputGroup input {
        padding: 2%;
        width: 50%;
        border: 1px solid #e4e4e4;
    }

    #cardNumber::-webkit-input-placeholder {
        color: #d8d8d8;
    }

    #ccMonth, #ccYear {
        padding: 2%;
        border: 1px solid #e4e4e4;
    }

    #cvc {
        width: 10%;
    }

    .complete-purchase {
        margin: 2% 0% 16%;
    }

    .complete-purchase a {
        color: #1f9a04;
    }

    .complete-purchase p {
        display: inline-block;
        width: 55%;
        margin-left: 3%;
        font-size: 14px;
        line-height: 21px;
        color: grey;
        vertical-align: middle;
    }

    .purchase-button {
        background: #1f9a04;
        border: none;
        padding: 12px 30px;
        color: white !important;
        cursor: pointer;
    }

</style>
<script>
    $(document).ready(function(){
        $("#payment-tab-1").css({'background-color': '#ebebeb','border':'1px solid rgba(208, 208, 208, 0)'});

        $('input[name="cardType"]').click(function() {

            if($(this).attr('id') == 'creditCart') {
                $('.creditCart-form').show(400);

                $("#payment-tab-1").css({'background-color': '#ebebeb','border':'1px solid rgba(208, 208, 208, 0)'});
            }
            else {
                $('.creditCart-form').hide(400);
                $("#payment-tab-1").css({'background-color': 'white','border':'1px solid #d6d6d6'});
            }

            if($(this).attr('id') == 'paypal') {
                $('.showpaypal').show(400);
                $("#payment-tab-2").css({'background-color': '#ebebeb','border':'1px solid rgba(208, 208, 208, 0)'});
            }
            else {
                $('.showpaypal').hide(400);
                $("#payment-tab-2").css({'background-color': 'white','border':'1px solid #d6d6d6'});

            }
        });
    });
</script>
<div class="payment">
    <h2 class="">Page de Paiement</h2>
    <div class="payment-tab" id="payment-tab-1">
        <div class="payment-radioGroup">
            <input checked type="radio" name="cardType" id="creditCart" value="creditCard">
            <label for="creditCart">Carte Bancaire</label>
            <img class="" src="http://res.cloudinary.com/dvdvx4e9x/image/upload/v1499409361/MasterCard_Logo.svg_zxc1v6.png" alt="logo">
            <img class="" src="http://res.cloudinary.com/dvdvx4e9x/image/upload/v1499409361/visa-logo-high-resolution_codkhw.jpg" alt="logo">
        </div>
        <div class="creditCart-form">
            <div class="textInputGroup">
                <label for="cardNumber">Numéro de carte</label>
                <input id="cardNumber" name="cardNumber" placeholder="1234 - 5678 - 9876 - 5432" required type="text">
            </div>
            <div class="textInputGroup textInputGroup-halfWidth">
                <label for="expirationDate">Date d'Expiration</label>
                <select name="cardExpirationMonth" id="ccMonth" title="Month:">
                    <option value="" selected="selected">MM</option>
                    <option value="1">01</option>
                    <option value="2">02</option>
                    <option value="3">03</option>
                    <option value="4">04</option>
                    <option value="5">05</option>
                    <option value="6">06</option>
                    <option value="7">07</option>
                    <option value="8">08</option>
                    <option value="9">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select> &nbsp;/&nbsp;
                <select name="cardExpirationYear" id="ccYear" title="Year:">
                    <option value="" selected="selected">YYYY</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                </select>
            </div>
            <div class="textInputGroup textInputGroup-halfWidthRight">
                <label for="cvc">CVC</label>
                <input id="cvc" name="cvc" placeholder="XXX" required type="text">
            </div>
            <div class="textInputGroup">
                <label for="nameOnCard">Nom de famille</label>
                <input id="nameOnCard" name="nameOnCard" required type="text">
            </div>
        </div>
    </div>
</div>
<div class="complete-purchase">
    <a href="" class="purchase-button">Confirmer l'Achat</a>
    <p>En complétant votre achat, vous acceptez nos conditions de vente</p>
</div>
</body>
</html>
