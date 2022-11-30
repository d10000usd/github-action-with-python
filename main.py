import os
from datetime import datetime
from pytz import timezone
from github import Github


def upissue(issue_title):
    upload_contents= f"{issue_title}Upload Github Issue Success!"
    return upload_contents
def get_github_repo(access_token, repository_name):
    g = Github(access_token)
    return g.get_user().get_repo(repository_name)
def upload_github_issue(repo, title, body):
    repo.create_issue(title=title, body=body)

if __name__ == "__main__":
    access_token = os.environ['MY_GITHUB_TOKEN']
    repository_name = "github-action-with-python"
    seoul_timezone = timezone('Asia/Seoul')
    today = datetime.now(seoul_timezone)
    today_date = today.strftime("%Y년 %m월 %d일")
    issue_title = f"NEW ISUE !! ({today_date})"
    upload_contents = upissue(issue_title)
    repo = get_github_repo(access_token, repository_name)
    upload_github_issue(repo, issue_title, upload_contents)
    print("Upload Github Issue Success!")

