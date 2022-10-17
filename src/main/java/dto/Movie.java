package dto;

public class Movie {
	private String movie_code;
	private String movie_title;
	private String movie_age;
	private String movie_director;
	private String movie_genre;
	private String moive_actor;
	private String movie_date;

	public Movie() {}

	public Movie(String movie_code, String movie_title, String movie_age, String movie_director, String movie_genre, String moive_actor, String movie_date) {
		super();
		this.movie_code = movie_code;
		this.movie_title = movie_title;
		this.movie_age = movie_age;
		this.movie_director = movie_director;
		this.movie_genre = movie_genre;
		this.moive_actor = moive_actor;
		this.movie_date = movie_date;

	}

	@Override
	public String toString() {
		return "Movie [movie_code=" + movie_code + ", movie_title=" + movie_title + ", movie_age=" + movie_age + ", movie_director=" + movie_director
				+ ", movie_genre=" + movie_genre + ", moive_actor=" + moive_actor + ", movie_date" + movie_date+ "]";
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public void setMovie_age(String movie_age) {
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

	public String getMoive_actor() {
		return moive_actor;
	}

	public void setMoive_actor(String moive_actor) {
		this.moive_actor = moive_actor;
	}

	public String getMovie_date() {
		return movie_date;
	}

	public void setMovie_date(String movie_date) {
		this.movie_date = movie_date;
	}

}
