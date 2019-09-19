require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Aadhar card no", with: @employee.aadhar_card_no
    fill_in "Email", with: @employee.email
    fill_in "Employee name", with: @employee.employee_name
    fill_in "Mobile", with: @employee.mobile
    fill_in "Password digest", with: @employee.password_digest
    fill_in "Role", with: @employee.role
    fill_in "Store", with: @employee.store_id
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Aadhar card no", with: @employee.aadhar_card_no
    fill_in "Email", with: @employee.email
    fill_in "Employee name", with: @employee.employee_name
    fill_in "Mobile", with: @employee.mobile
    fill_in "Password digest", with: @employee.password_digest
    fill_in "Role", with: @employee.role
    fill_in "Store", with: @employee.store_id
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end