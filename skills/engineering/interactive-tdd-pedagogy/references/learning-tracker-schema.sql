CREATE TABLE IF NOT EXISTS projects (
    name TEXT PRIMARY KEY,
    language TEXT,
    frameworks TEXT,
    repo_path TEXT,
    summary TEXT
);

CREATE TABLE IF NOT EXISTS behavior_paths (
    id TEXT PRIMARY KEY,
    project_name TEXT,
    business_behavior TEXT,
    source_files TEXT,
    test_files TEXT,
    key_assertions TEXT,
    red_green_status TEXT,
    user_confirmed INTEGER DEFAULT 0,
    risks TEXT
);

CREATE TABLE IF NOT EXISTS learning_states (
    concept TEXT PRIMARY KEY,
    category TEXT,
    status TEXT,
    evidence TEXT,
    next_suggested_explanation TEXT
);

CREATE TABLE IF NOT EXISTS sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    analyzed_focus TEXT,
    participation_level TEXT,
    tests_run TEXT,
    user_edits TEXT,
    user_answers TEXT,
    blindspots TEXT,
    next_steps TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS review_tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    theme TEXT,
    exercise TEXT,
    due_time TEXT,
    status TEXT DEFAULT 'pending'
);
