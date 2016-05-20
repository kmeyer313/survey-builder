# USERS
course_author1 = User.create!(account_type: 'course_author', name: 'Katie', email: 'katie@me.com', password: 'password')
# faculty1 = User.create!(account_type: 'faculty', name: 'Patrick', email: 'patrick@me.com', password: 'password')

# student1 = User.create!(account_type: 'student', name: 'Billy', email: 'billy@me.com', password: 'password')
# student2 = User.create!(account_type: 'student', name: 'Patti', email: 'patti@me.com', password: 'password')
# student3 = User.create!(account_type: 'student', name: 'Kelsie', email: 'keslie@me.com', password: 'password')
# student4 = User.create!(account_type: 'student', name: 'Joe', email: 'joe@me.com', password: 'password')
# student5 = User.create!(account_type: 'student', name: 'Amanda', email: 'amanda@me.com', password: 'password')


# COURSES
ruby = Course.create!(course_title: 'Ruby', user: course_author1)
javascript = Course.create!(course_title: 'JavaScript', user: course_author1)

courses = [ruby, javascript]


# SURVEYS
courses.each do |course|
  Survey.create!(survey_title: 'Incoming Student Survey', survey_description: 'A survey to assess your knowledge before the course begins', question_count: 3, submissions_allowed: false, anonymous_submission: true, faculty_access: true, course: course)
  Survey.create!(survey_title: 'Outgoing Student Survey', survey_description: 'A survey to assess your knowledge at the end of the course', question_count: 3, submissions_allowed: false, anonymous_submission: true, faculty_access: true, course: course)
end

# QUESTIONS & RESPONSES
courses.each do |course|
  course.surveys.each do |survey|
    survey.questions << Question.create!(question_text: "How many months of experience have you had with this language?", required: true, question_type: "multiple choice", order: 1, survey: survey)
    survey.questions << Question.create!(question_text: "How comfortable to you feel with this language?", required: true, question_type: "multiple choice", order: 2, survey: survey)
    survey.questions << Question.create!(question_text: "Which of the following do you feel most comfortable with?", required: true, question_type: "multiple choice", order: 3, survey: survey)
    survey.questions[0].responses << Response.create!(response_text: "less than a month")
    survey.questions[0].responses << Response.create!(response_text: "1-3 months")
    survey.questions[0].responses << Response.create!(response_text: "4-6 months")
    survey.questions[0].responses << Response.create!(response_text: "7-9 months")
    survey.questions[0].responses << Response.create!(response_text: "10+ months")
    survey.questions[1].responses << Response.create!(response_text: "very uncomfortable")
    survey.questions[1].responses << Response.create!(response_text: "I have some basics, Google is my friend")
    survey.questions[1].responses << Response.create!(response_text: "pretty good, I don\'t need to look up questions much")
    survey.questions[1].responses << Response.create!(response_text: "I\'m a wizard")
    survey.questions[2].responses << Response.create!(response_text: "HTML")
    survey.questions[2].responses << Response.create!(response_text: "CSS")
    survey.questions[2].responses << Response.create!(response_text: "Ruby")
    survey.questions[2].responses << Response.create!(response_text: "JavaScript")
    survey.questions[2].responses << Response.create!(response_text: "none")
  end
end


# RESPONSES if want to visualize data... needs refactoring, much has changed

# question1responses = ["less than a month", "1-3 months", "4-6 months", "7-9 months", "10+ months"]
# question2responses = ["very uncomfortable", "I have some basics, Google is my friend", "pretty good, I don\'t need to look up questions much", "I\'m a wizard"]
# question3responses = ["HTML", "CSS", "Ruby", "JavaScript", "none"]

# students.each do |stud|
#   Response.create!(survey: survey1, question: question_array[0], student: stud, response_text: question1responses.sample)
#   Response.create!(survey: survey1, question: ruby_question1, student: stud, response_text: question2responses.sample)
#   Response.create!(survey: survey1, question: ruby_question1, student: stud, response_text: question3responses.sample)
#   Response.create!(survey: survey2, question: ruby_question1, student: stud, response_text: question1responses.sample)
#   Response.create!(survey: survey2, question: ruby_question1, student: stud, response_text: question2responses.sample)
#   Response.create!(survey: survey2, question: ruby_question1, student: stud, response_text: question3responses.sample)
#   Response.create!(survey: survey1, question: javascript_question1, student: stud, response_text: question1responses.sample)
#   Response.create!(survey: survey1, question: javascript_question1, student: stud, response_text: question2responses.sample)
#   Response.create!(survey: survey1, question: javascript_question1, student: stud, response_text: question3responses.sample)
#   Response.create!(survey: survey2, question: javascript_question1, student: stud, response_text: question1responses.sample)
#   Response.create!(survey: survey2, question: javascript_question1, student: stud, response_text: question2responses.sample)
#   Response.create!(survey: survey2, question: javascript_question1, student: stud, response_text: question3responses.sample)
# end