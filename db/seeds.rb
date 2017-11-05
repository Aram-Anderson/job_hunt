# You must first rake db:{create,migrate}, then log in to the app via LinkedIn to create a User. The jobs are asscoiated with a specifc user, so they need a user to attach to.

Status.create([{name: "interested"}, {name: "applied"}, {name: "interviewed"}, {name: "offer"}, {name: "accepted"}])

statuses = Status.all
salary = [75000, 78000, 80000, 82000, 83000, 87000, 90000, 92000, 95000, 97000, 103000]
user = User.first
user.jobs.create!(company: "Workiva Inc.", title: "Software Engineer", city: "Denver", state: "CO", salary: salary.sample, post_url: "https://www.workiva.com/", status: statuses.sample)

user.jobs.create!(company: "MiTek Industries", title: "Software Engineer", city: "Greenwood Village", state: "CO", salary: salary.sample, post_url: "https://www.miteksystems.com/", status: statuses.sample)

user.jobs.create!(company: "Bytion", title: "Senior Software Engineer", city: "Denver", state: "CO", salary: salary.sample, post_url: "http://bytion.io/", status: statuses.sample)

user.jobs.create!(company: "Journal Technologies", title: "Software Developer", city: "Denver", state: "CO", salary: salary.sample, post_url: "http://journaltech.com/", status: statuses.sample)

user.jobs.create!(company: "United Launch Alliance", title: "Software Engineer", city: "Denver", state: "CO", salary: salary.sample, post_url: "http://www.ulalaunch.com/", status: statuses.sample)
