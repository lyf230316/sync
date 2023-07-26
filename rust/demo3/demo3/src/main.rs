use git2::Repository;

fn main() {


}

pub struct GFile {
    pub size: u64,
    pub basename: String,
    pub path: String,
    pub md5: String,
    pub sha1: String,
    pub sha256: String,
    pub sha512: String,
}

fn upload(repo: Repository, file:GFile) {
    
}