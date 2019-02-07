from behave import given


@given('I update the surname for customer "{customer_id}" to "{surname}"')
def update_surname(context, customer_id, surname):
    response = context.web_client.post(
        '/customers/update_surname/',
        json={'customer_id': customer_id, 'surname': surname})

    assert response.status_code == 201, response.status_code
