package dto;

public class Movie {
   
   private int movie_code;
   private String movie_title;
   private int movie_age;
   private String movie_director;
   private String movie_genre;
   private String movie_actor;
   private String movie_date;
   
   public Movie() {}

   public Movie(int movie_code, String movie_title, int movie_age, String movie_director, String movie_genre,
         String movie_actor, String movie_date) {
      super();
      this.movie_code = movie_code;
      this.movie_title = movie_title;
      this.movie_age = movie_age;
      this.movie_director = movie_director;
      this.movie_genre = movie_genre;
      this.movie_actor = movie_actor;
      this.movie_date = movie_date;
   }

   @Override
   public String toString() {
      return "Movie [movie_code=" + movie_code + ", movie_title=" + movie_title + ", movie_age=" + movie_age
            + ", movie_director=" + movie_director + ", movie_genre=" + movie_genre + ", movie_actor=" + movie_actor
            + ", movie_date=" + movie_date + "]";
   }

   public int getMovie_code() {
      return movie_code;
   }

   public void setMovie_code(int movie_code) {
      this.movie_code = movie_code;
   }

   public String getMovie_title() {
      return movie_title;
   }

   public void setMovie_title(String movie_title) {
      this.movie_title = movie_title;
   }

   public int getMovie_age() {
      return movie_age;
   }

   public void setMovie_age(int movie_age) {
      this.movie_age = movie_age;
   }

   public String getMovie_director() {
      return movie_director;
   }

   public void setMovie_director(String movie_director) {
      this.movie_director = movie_director;
   }

   public String getMovie_genre() {
      return movie_genre;
   }

   public void setMovie_genre(String movie_genre) {
      this.movie_genre = movie_genre;
   }

   public String getMovie_actor() {
      return movie_actor;
   }

   public void setMovie_actor(String movie_actor) {
      this.movie_actor = movie_actor;
   }

   public String getMovie_date() {
      return movie_date;
   }

   public void setMovie_date(String movie_date) {
      this.movie_date = movie_date;
   }
   
   
   
   
   
   
   
   
   
   
   
   

}