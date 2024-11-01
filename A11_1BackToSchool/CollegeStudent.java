public class CollegeStudent extends Student
{
    int myMajor;
    int myYear;
    public CollegeStudent() {
        super("ff", 3, "fa", "234", 3.32);
    }
    /**
     * Returns a String representation of this class.
     * @return private instance data as a String
     */
    public String toString()
    {
        return super.toString() + ", year: " + myYear +
            ", major: " + myMajor;
    }
}
