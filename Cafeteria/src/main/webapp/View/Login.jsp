
<jsp:include page="Header.jsp" />

<!DOCTYPE html>

<html lang="en">
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
    body {
      background-color: white;
    }

    .login-container {
      margin-top: 100px;
    }
    
     .custom-btn {
    background-color: #ffffff;
    border-color: #000000;
  color: #000000;
}
    

    .login-form {
      background-color: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
    }

    .login-form h2 {
      margin-bottom: 30px;
    }

    .login-form .form-control {
      border-radius: 2px;
    }

    .login-form .btn {
      border-radius: 20px;
      transition: all 0.5s;
      
    }

    .login-form .btn:hover {
      transform: scale(1.05);
      background-color:black;
    }

    .login-form .btn-block {
      text-transform: uppercase;
    }

    .login-form .remember-checkbox {
      margin-top: 10px;
    }

    .login-form .forgot-password {
      text-align: right;
      margin-top: 10px;
    }

    .login-form .forgot-password a {
      color: #777777;
    }

    .login-form .image-container {
      text-align: center;
      margin-bottom: 30px;
    }

    .login-form .image-container img {
      width: 100%;
      height: 100%;
    }

    .login-form .input-group-prepend .input-group-text {
      border-radius: 2px 0 0 2px;
    }

    .login-form .button-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .login-form .button-container .btn {
      flex: 1;
      margin-right: 10px;
    }
  </style>
  <script>
    $(document).ready(function() {
      $(".login-form").hide().fadeIn(2000);
    });
  </script>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10 login-container">
        <form class="login-form">
          <div class="row">
            <div class="col-md-6">
              <div class="image-container">
                <img src="https://img.freepik.com/vetores-premium/cafe-desenhado-a-mao-com-biscoito_6011-201.jpg" style="height:60%; width:60%;" alt="Caf�">
              </div>
            </div>
            <div class="col-md-6">
              <h2>Login</h2>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Email" required>
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-lock"></i></span>
                </div>
                <input type="password" class="form-control" placeholder="Senha" required>
              </div>
              <div class="button-container">
            <button type="submit" class="btn btn-primary custom-btn">Entrar</button>
            <button type="submit" class="btn btn-primary custom-btn">Cadastrar</button>

              </div>
              <div class="remember-checkbox">
                <label>
                  <input type="checkbox"> Lembre-me
                </label>
              </div>
              <div class="forgot-password">
                <a href="#">Esqueceu a Senha?</a>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>