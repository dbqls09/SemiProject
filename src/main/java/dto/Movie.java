package dto;

public class Movie {
	
	private int movieCode;
	private String movieTitle;
	private int movieAge;
	private String movieDirector;
	private String movieGenre;
	private String movieActor;
	private String movieDate;
	
	public Movie() {}

	public Movie(int movieCode, String movieTitle, int movieAge, String movieDirector, String movieGenre,
			String movieActor, String movieDate) {
		super();
		this.movieCode = movieCode;
		this.movieTitle = movieTitle;
		this.movieAge = movieAge;
		this.movieDirector = movieDirector;
		this.movieGenre = movieGenre;
		this.movieActor = movieActor;
		this.movieDate = movieDate;
	}

	@Override
	public String toString() {
		return "Movie [movieCode=" + movieCode + ", movieTitle=" + movieTitle + ", movieAge=" + movieAge
				+ ", movieDirector=" + movieDirector + ", movieGenre=" + movieGenre + ", movieActor=" + movieActor
				+ ", movieDate=" + movieDate + "]";
	}

	public int getMovieCode() {
		return movieCode;
	}

	public void setMovieCode(int movieCode) {
		this.movieCode = movieCode;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public int getMovieAge() {
		return movieAge;
	}

	public void setMovieAge(int movieAge) {
		this.movieAge = movieAge;
	}

	public String getMovieDirector() {
		return movieDirector;
	}

	public void setMovieDirector(String movieDirector) {
		this.movieDirector = movieDirector;
	}

	public String getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}

	public String getMovieActor() {
		return movieActor;
	}

	public void setMovieActor(String movieActor) {
		this.movieActor = movieActor;
	}

	public String getMovieDate() {
		return movieDate;
	}

	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}
	
	

}
