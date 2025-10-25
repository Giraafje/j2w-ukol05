[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <main>
        <h1>Registrace na letní dětský tábor</h1>
        <form class="registration">
            <div class="col-md-12 mb-3">
                <label class="form-label" for="firstName">Jméno:</label>
                [@spring.formInput path="form.firstName"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-12 mb-3">
                <label class="form-label" for="lastName">Příjmení:</label>
                [@spring.formInput path="form.lastName"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-12 mb-3">
                <label for="dateOfBirth" class="form-label">Datum narození:</label>
                [@spring.formInput path="form.dateOfBirth" fieldType="date" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-12 mb-3">
                <label for="gender" class="form-label">Pohlaví:</label>
                [@spring.formSingleSelect path="form.gender" options={
                    "": "",
                    "boy": "Chlapec",
                    "girl": "Dívka"
                }/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-12 mb-3">
                <label for="session" class="formRow">Turnus:</label>
                [@spring.formSingleSelect path="form.session" options={
                    "": "",
                    "session-1": "4. - 11. července 2026",
                    "session-2": "11. - 18. července 2026",
                    "session-3": "18. - 25. července 2026",
                    "session-4": "25. července - 1. srpna 2026",
                    "session-5": "1. - 8. srpna 2026",
                    "session-6": "8. - 15. srpna 2026"
                } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-12 mb-3">
                <label for="email" class="formRow">E-mail:</label>
                [@spring.formInput path="form.email" fieldType="email" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div>
                <label for="phoneNumber" class="formRow">Telefon:</label>
                [@spring.formInput path="form.phoneNumber" fieldType="tel" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>

            <div class="col-md-1 mt-4 m-auto">
                <button type="submit" class="btn btn-primary">Objednat</button>
            </div>
        </form>
    </main>
</body>
</html>
