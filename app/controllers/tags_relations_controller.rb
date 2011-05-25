class TagsRelationsController < ApplicationController
  # GET /tags_relations
  # GET /tags_relations.xml
  def index
    @tags_relations = TagsRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tags_relations }
    end
  end

  # GET /tags_relations/1
  # GET /tags_relations/1.xml
  def show
    @tags_relation = TagsRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tags_relation }
    end
  end

  # GET /tags_relations/new
  # GET /tags_relations/new.xml
  def new
    @tags_relation = TagsRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tags_relation }
    end
  end

  # GET /tags_relations/1/edit
  def edit
    @tags_relation = TagsRelation.find(params[:id])
  end

  # POST /tags_relations
  # POST /tags_relations.xml
  def create
    @tags_relation = TagsRelation.new(params[:tags_relation])

    respond_to do |format|
      if @tags_relation.save
        format.html { redirect_to(@tags_relation, :notice => 'Tags relation was successfully created.') }
        format.xml  { render :xml => @tags_relation, :status => :created, :location => @tags_relation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tags_relation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tags_relations/1
  # PUT /tags_relations/1.xml
  def update
    @tags_relation = TagsRelation.find(params[:id])

    respond_to do |format|
      if @tags_relation.update_attributes(params[:tags_relation])
        format.html { redirect_to(@tags_relation, :notice => 'Tags relation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tags_relation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_relations/1
  # DELETE /tags_relations/1.xml
  def destroy
    @tags_relation = TagsRelation.find(params[:id])
    @tags_relation.destroy

    respond_to do |format|
      format.html { redirect_to(tags_relations_url) }
      format.xml  { head :ok }
    end
  end
end
