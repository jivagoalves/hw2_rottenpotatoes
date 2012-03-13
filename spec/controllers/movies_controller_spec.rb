require 'spec_helper'

describe MoviesController do
  describe "#index" do

    context "when there is no order to sort" do
      before do
        get :index
      end

      it "should stil assign @movies" do
        assigns(:movies).should_not be_nil
      end

      it "should not assign @order" do
        assigns(:order).should be_nil
      end
    end

    context "when there is order to sort" do
      before do
        mock_model("Movie")
      end

      after do
        assigns(:movies).should == ["m1","m2"]
      end

      it "should ask to order by title and assign @movies and @order" do
        Movie.should_receive(:order).
              with("title ASC").
              and_return(["m1","m2"])

        get :index, {:order => :title}
        assigns(:order).should == "title"
      end

      it "should ask to order by release date and assign @movies and @order" do
        Movie.should_receive(:order).
              with("release_date ASC").
              and_return(["m1","m2"])

        get :index, {:order => :release_date}
        assigns(:order).should == "release_date"
      end
    end
  end
end
