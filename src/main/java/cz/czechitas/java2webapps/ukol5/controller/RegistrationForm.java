package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.*;

import java.time.LocalDate;
import java.time.Period;

public class RegistrationForm {
  @NotBlank
  private String firstName;

  @NotBlank
  private String lastName;

  @NotNull
  @Past
  private LocalDate dateOfBirth;

  @NotNull
  private Gender gender;

  @NotBlank
  private String session;

  @Email
  private String email;

  private String phoneNumber;

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public LocalDate getDateOfBirth() {
    return dateOfBirth;
  }

  public void setDateOfBirth(LocalDate dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }

  public Gender getGender() {
    return gender;
  }

  public void setGender(Gender gender) {
    this.gender = gender;
  }

  public String getSession() {
    return session;
  }

  public void setSession(String session) {
    this.session = session;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public Integer getAge() {
    if (dateOfBirth == null) {
      return 0; //If I returned null, the page is failing because an Integer is expected
    }

    Period period = dateOfBirth.until(LocalDate.now());
    return period.getYears();
  }
}
