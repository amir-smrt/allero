package githubConnector

type GithubOwner struct {
	Name         string                       `json:"ownerName"`
	Type         string                       `json:"ownerType"`
	ID           int                          `json:"id"`
	Repositories map[string]*GithubRepository `json:"repositories"`
}

type GithubRepository struct {
	Name                   string                   `json:"name"`
	FullName               string                   `json:"fullName"`
	ID                     int                      `json:"id"`
	ProgrammingLanguages   []string                 `json:"programmingLanguages"`
	GithubActionsWorkflows map[string]*PipelineFile `json:"github-actions-workflows"`
	JfrogPipelines         map[string]*PipelineFile `json:"jfrog-pipelines"`
}

type PipelineFile struct {
	RelativePath string      `json:"relativePath"`
	Filename     string      `json:"filename"`
	Origin       string      `json:"origin"`
	Content      interface{} `json:"content"`
}
