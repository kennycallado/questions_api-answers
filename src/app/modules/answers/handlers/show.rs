use rocket::http::Status;
use rocket::serde::json::Json;

use crate::config::database::Db;

use crate::app::providers::interfaces::helpers::claims::UserInClaims;

use crate::app::modules::answers::model::Answer;
use crate::app::modules::answers::services::repository as answers_repository;

pub async fn get_show_admin(db: Db, _admin: UserInClaims, id: i32) -> Result<Json<Answer>, Status> {
    let answer = answers_repository::get_by_id(&db, id).await;

    match answer {
        Ok(answer) => Ok(Json(answer)),
        Err(_) => {
            println!("Error: get_show_admin; Answer not obtained.");
            Err(Status::NotFound)
        },
    }
}
