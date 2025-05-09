# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.4
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package CRFPP;
use base qw(Exporter);
use base qw(DynaLoader);
package CRFPPc;
bootstrap CRFPP;
package CRFPP;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package CRFPP;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package CRFPP;


############# Class : CRFPP::Model ##############

package CRFPP::Model;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( CRFPP );
%OWNER = ();
%ITERATORS = ();
*getTemplate = *CRFPPc::Model_getTemplate;
*createTagger = *CRFPPc::Model_createTagger;
*what = *CRFPPc::Model_what;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        CRFPPc::delete_Model($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = CRFPPc::new_Model(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : CRFPP::Tagger ##############

package CRFPP::Tagger;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( CRFPP );
%OWNER = ();
%ITERATORS = ();
*set_model = *CRFPPc::Tagger_set_model;
*set_vlevel = *CRFPPc::Tagger_set_vlevel;
*vlevel = *CRFPPc::Tagger_vlevel;
*set_cost_factor = *CRFPPc::Tagger_set_cost_factor;
*cost_factor = *CRFPPc::Tagger_cost_factor;
*set_nbest = *CRFPPc::Tagger_set_nbest;
*nbest = *CRFPPc::Tagger_nbest;
*add = *CRFPPc::Tagger_add;
*size = *CRFPPc::Tagger_size;
*xsize = *CRFPPc::Tagger_xsize;
*dsize = *CRFPPc::Tagger_dsize;
*result = *CRFPPc::Tagger_result;
*answer = *CRFPPc::Tagger_answer;
*y = *CRFPPc::Tagger_y;
*y2 = *CRFPPc::Tagger_y2;
*yname = *CRFPPc::Tagger_yname;
*x = *CRFPPc::Tagger_x;
*ysize = *CRFPPc::Tagger_ysize;
*prob = *CRFPPc::Tagger_prob;
*set_penalty = *CRFPPc::Tagger_set_penalty;
*penalty = *CRFPPc::Tagger_penalty;
*alpha = *CRFPPc::Tagger_alpha;
*beta = *CRFPPc::Tagger_beta;
*emission_cost = *CRFPPc::Tagger_emission_cost;
*next_transition_cost = *CRFPPc::Tagger_next_transition_cost;
*prev_transition_cost = *CRFPPc::Tagger_prev_transition_cost;
*best_cost = *CRFPPc::Tagger_best_cost;
*Z = *CRFPPc::Tagger_Z;
*empty = *CRFPPc::Tagger_empty;
*clear = *CRFPPc::Tagger_clear;
*next = *CRFPPc::Tagger_next;
*parse = *CRFPPc::Tagger_parse;
*what = *CRFPPc::Tagger_what;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        CRFPPc::delete_Tagger($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = CRFPPc::new_Tagger(@_);
    bless $self, $pkg if defined($self);
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package CRFPP;

*VERSION = *CRFPPc::VERSION;
1;
