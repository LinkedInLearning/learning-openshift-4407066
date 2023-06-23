from locust import FastHttpUser, task

class OpenShiftUser(FastHttpUser):
    @task
    def knative_sleeper(self):
        self.client.get("/")

