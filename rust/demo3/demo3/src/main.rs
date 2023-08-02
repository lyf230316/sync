use std::path::PathBuf;
use std::string;
use git2::Repository;

pub struct GFile {
    pub size: u64,
    pub basename: String,
    pub path: String,
    pub md5: String,
    pub sha1: String,
    pub sha256: String,
    pub sha512: String,
}

fn main() {
    upload(string("ac"),string("f"));
}

fn upload(repoName: string, file:string) {
    let mut path = PathBuf::new();
    path.push("/tmp/"+repoName);
    let repo = Repository::init_bare(path);
    let mut index = repo.index();
}