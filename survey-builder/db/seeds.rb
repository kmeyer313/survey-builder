# USERS
course_author = User.create!(account_type: 'course_author', name: 'Katie', email: 'katie@me.com', password: 'password')

student1 = User.create!(account_type: 'student', name: 'Billy', email: 'billy@me.com', password: 'password')
student2 = User.create!(account_type: 'student', name: 'Patti', email: 'patti@me.com', password: 'password')
student3 = User.create!(account_type: 'student', name: 'Kelsie', email: 'keslie@me.com', password: 'password')
student4 = User.create!(account_type: 'student', name: 'Joe', email: 'joe@me.com', password: 'password')
student5 = User.create!(account_type: 'student', name: 'Amanda', email: 'amanda@me.com', password: 'password')

faculty = User.create!(account_type: 'faculty', name: 'Patrick', email: 'patrick@me.com', password: 'password')

# COURSES
ruby = Course.create!(course_title: 'Ruby')
javascript = Course.create!(course_title: 'JavaScript')

# USER_COURSES
course1ca = UserCourse.create!(user: course_author, course: ruby)
course2ca = UserCourse.create!(user: course_author, course: javascript)

course1s1 = UserCourse.create!(user: student1, course: ruby)
course2s1 = UserCourse.create!(user: student1, course: javascript)
course1s2 = UserCourse.create!(user: student2, course: ruby)
course2s2 = UserCourse.create!(user: student2, course: javascript)
course1s3 = UserCourse.create!(user: student3, course: ruby)
course2s3 = UserCourse.create!(user: student3, course: javascript)
course1s4 = UserCourse.create!(user: student4, course: ruby)
course2s4 = UserCourse.create!(user: student4, course: javascript)
course1s5 = UserCourse.create!(user: student5, course: ruby)
course2s5 = UserCourse.create!(user: student5, course: javascript)

course1f = UserCourse.create!(user: faculty, course: ruby)
course2f = UserCourse.create!(user: faculty, course: javascript)

# SURVEYS
survey1 = Survey.create!(survey_title: 'Incoming Student Survey', survey_description: 'A survey to assess your knowledge before the course begins', question_count: 3, submissions_allowed: 1, anonymous_submission: true, faculty_access: true)
survey2 = Survey.create!(survey_title: 'Outgoing Student Survey', survey_description: 'A survey to assess your knowledge at the end of the course', question_count: 3, submissions_allowed: 1, anonymous_submission: true, faculty_access: true)

# COURSE_SURVEYS
course_survey1pre = CourseSurvey.create!(course: ruby, survey: survey1)
course_survey1post = CourseSurvey.create!(course: ruby, survey: survey2)
course_survey2pre = CourseSurvey.create!(course: javascript, survey: survey1)
course_survey2post = CourseSurvey.create!(course: javascript, survey: survey2)

# QUESTIONS
generic_question1 = Question.create!(question_text: "How many months of experience have you had with this language?", required: true, question_type: "multiple choice", possible_responses: ["less than a month", "1-3 months", "4-6 months", "7-9 months", "10+ months"], order: 1)
generic_question2 = Question.create!(question_text: "How comfortable to you feel with this language?", required: true, question_type: "multiple choice", possible_responses: ["very uncomfortable", "I have some basics, Google is my friend", "pretty good, I don\'t need to look up questions much", "I\'m a wizard"], order: 2)
generic_question3 = Question.create!(question_text: "Which of the following do you feel most comfortable with?", required: true, question_type: "multiple choice", possible_responses: ["HTML", "CSS", "Ruby", "JavaScript", "none"], order: 3)

ruby_question1 = Question.create!(question_text: "How many months of experience have you had with Ruby?", required: true, question_type: "multiple choice", possible_responses: ["less than a month", "1-3 months", "4-6 months", "7-9 months", "10+ months"], order: 1)
ruby_question2 = Question.create!(question_text: "How comfortable to you feel with Ruby?", required: true, question_type: "multiple choice", possible_responses: ["very uncomfortable", "I have some basics, Google is my friend", "pretty good, I don\'t need to look up questions much", "I\'m a wizard"], order: 2)
ruby_question3 = Question.create!(question_text: "Which of the following do you feel most comfortable with?", required: true, question_type: "multiple choice", possible_responses: ["HTML", "CSS", "Ruby", "JavaScript", "none"], order: 3)

javascript_question1 = Question.create!(question_text: "How many months of experience have you had with Javascript?", required: true, question_type: "multiple choice", possible_responses: ["less than a month", "1-3 months", "4-6 months", "7-9 months", "10+ months"], order: 1)
javascript_question2 = Question.create!(question_text: "How comfortable to you feel with Javascript?", required: true, question_type: "multiple choice", possible_responses: ["very uncomfortable", "I have some basics, Google is my friend", "pretty good, I don\'t need to look up questions much", "I\'m a wizard"], order: 2)
javascript_question3 = Question.create!(question_text: "Which of the following do you feel most comfortable with?", required: true, question_type: "multiple choice", possible_responses: ["HTML", "CSS", "Ruby", "JavaScript", "none"], order: 3)


# SURVEY_QUESTIONS
generic_pre_survey_question1 = SurveyQuestion.create!(survey: survey1, question: generic_question1)
generic_pre_survey_question2 = SurveyQuestion.create!(survey: survey1, question: generic_question2)
generic_pre_survey_question3 = SurveyQuestion.create!(survey: survey1, question: generic_question3)

generic_post_survey_question1 = SurveyQuestion.create!(survey: survey2, question: generic_question1)
generic_post_survey_question2 = SurveyQuestion.create!(survey: survey2, question: generic_question2)
generic_post_survey_question3 = SurveyQuestion.create!(survey: survey2, question: generic_question3)

ruby_pre_survey_question1 = SurveyQuestion.create!(survey: survey1, question: ruby_question1)
ruby_pre_survey_question2 = SurveyQuestion.create!(survey: survey1, question: ruby_question2)
ruby_pre_survey_question3 = SurveyQuestion.create!(survey: survey1, question: ruby_question3)

ruby_post_survey_question1 = SurveyQuestion.create!(survey: survey2, question: ruby_question1)
ruby_post_survey_question2 = SurveyQuestion.create!(survey: survey2, question: ruby_question2)
ruby_post_survey_question3 = SurveyQuestion.create!(survey: survey2, question: ruby_question3)

javascript_pre_survey_question1 = SurveyQuestion.create!(survey: survey1, question: javascript_question1)
javascript_pre_survey_question2 = SurveyQuestion.create!(survey: survey1, question: javascript_question2)
javascript_pre_survey_question3 = SurveyQuestion.create!(survey: survey1, question: javascript_question3)

javascript_post_survey_question1 = SurveyQuestion.create!(survey: survey2, question: javascript_question1)
javascript_post_survey_question2 = SurveyQuestion.create!(survey: survey2, question: javascript_question2)
javascript_post_survey_question3 = SurveyQuestion.create!(survey: survey2, question: javascript_question3)

# RESPONSES
# I started to get a little confused with my associations and schema here. My join tables and has_many/belongs_to associations were halting me. I changed my migrations because I was struggling to figure out how to connect the response to the user, question, and survey more simply. I realize now that my hard coding of the join tables could be done more simply, need to refactor.
question1responses = ["less than a month", "1-3 months", "4-6 months", "7-9 months", "10+ months"]
question2responses = ["very uncomfortable", "I have some basics, Google is my friend", "pretty good, I don\'t need to look up questions much", "I\'m a wizard"]
question3responses = ["HTML", "CSS", "Ruby", "JavaScript", "none"]

students = [student1, student2, student3, student4, student5]

students.each do |student|
  Response.create!(survey: survey1, question: ruby_question1, user: student, response_text: question1responses.sample)
  Response.create!(survey: survey1, question: ruby_question1, user: student, response_text: question2responses.sample)
  Response.create!(survey: survey1, question: ruby_question1, user: student, response_text: question3responses.sample)
  Response.create!(survey: survey2, question: ruby_question1, user: student, response_text: question1responses.sample)
  Response.create!(survey: survey2, question: ruby_question1, user: student, response_text: question2responses.sample)
  Response.create!(survey: survey2, question: ruby_question1, user: student, response_text: question3responses.sample)
  Response.create!(survey: survey1, question: javascript_question1, user: student, response_text: question1responses.sample)
  Response.create!(survey: survey1, question: javascript_question1, user: student, response_text: question2responses.sample)
  Response.create!(survey: survey1, question: javascript_question1, user: student, response_text: question3responses.sample)
  Response.create!(survey: survey2, question: javascript_question1, user: student, response_text: question1responses.sample)
  Response.create!(survey: survey2, question: javascript_question1, user: student, response_text: question2responses.sample)
  Response.create!(survey: survey2, question: javascript_question1, user: student, response_text: question3responses.sample)
end