/*
Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module (package="OCC") Geom2d

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i

%include Geom2d_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor Geom2d_Geometry;
class Geom2d_Geometry : public MMgt_TShared {
	public:
		%feature("autodoc", "	* Performs the symmetrical transformation of a Geometry with respect to the point P which is the center of the symmetry and assigns the result to this geometric object.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") Mirror;
		void Mirror (const gp_Pnt2d & P);
		%feature("autodoc", "	* Performs the symmetrical transformation of a Geometry with respect to an axis placement which is the axis of the symmetry.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") Mirror;
		void Mirror (const gp_Ax2d & A);
		%feature("autodoc", "	* Rotates a Geometry. P is the center of the rotation. Ang is the angular value of the rotation in radians.

	:param P:
	:type P: gp_Pnt2d
	:param Ang:
	:type Ang: float
	:rtype: None
") Rotate;
		void Rotate (const gp_Pnt2d & P,const Standard_Real Ang);
		%feature("autodoc", "	* Scales a Geometry. S is the scaling value.

	:param P:
	:type P: gp_Pnt2d
	:param S:
	:type S: float
	:rtype: None
") Scale;
		void Scale (const gp_Pnt2d & P,const Standard_Real S);
		%feature("autodoc", "	* Translates a Geometry. V is the vector of the tanslation.

	:param V:
	:type V: gp_Vec2d
	:rtype: None
") Translate;
		void Translate (const gp_Vec2d & V);
		%feature("autodoc", "	* Translates a Geometry from the point P1 to the point P2.

	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") Translate;
		void Translate (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	* Transformation of a geometric object. This tansformation can be a translation, a rotation, a symmetry, a scaling or a complex transformation obtained by combination of the previous elementaries transformations. (see class Transformation of the package Geom2d). The following transformations have the same properties as the previous ones but they don't modified the object itself. A copy of the object is returned.

	:param T:
	:type T: gp_Trsf2d
	:rtype: void
") Transform;
		virtual void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	:param P:
	:type P: gp_Pnt2d
	:rtype: Handle_Geom2d_Geometry
") Mirrored;
		Handle_Geom2d_Geometry Mirrored (const gp_Pnt2d & P);
		%feature("autodoc", "	:param A:
	:type A: gp_Ax2d
	:rtype: Handle_Geom2d_Geometry
") Mirrored;
		Handle_Geom2d_Geometry Mirrored (const gp_Ax2d & A);
		%feature("autodoc", "	:param P:
	:type P: gp_Pnt2d
	:param Ang:
	:type Ang: float
	:rtype: Handle_Geom2d_Geometry
") Rotated;
		Handle_Geom2d_Geometry Rotated (const gp_Pnt2d & P,const Standard_Real Ang);
		%feature("autodoc", "	:param P:
	:type P: gp_Pnt2d
	:param S:
	:type S: float
	:rtype: Handle_Geom2d_Geometry
") Scaled;
		Handle_Geom2d_Geometry Scaled (const gp_Pnt2d & P,const Standard_Real S);
		%feature("autodoc", "	:param T:
	:type T: gp_Trsf2d
	:rtype: Handle_Geom2d_Geometry
") Transformed;
		Handle_Geom2d_Geometry Transformed (const gp_Trsf2d & T);
		%feature("autodoc", "	:param V:
	:type V: gp_Vec2d
	:rtype: Handle_Geom2d_Geometry
") Translated;
		Handle_Geom2d_Geometry Translated (const gp_Vec2d & V);
		%feature("autodoc", "	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: Handle_Geom2d_Geometry
") Translated;
		Handle_Geom2d_Geometry Translated (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Geometry
") Copy;
		virtual Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Geometry::~Geom2d_Geometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Geometry {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Geometry {
	Handle_Geom2d_Geometry GetHandle() {
	return *(Handle_Geom2d_Geometry*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Geometry;
class Handle_Geom2d_Geometry : public Handle_MMgt_TShared {

    public:
        // constructors
        Handle_Geom2d_Geometry();
        Handle_Geom2d_Geometry(const Handle_Geom2d_Geometry &aHandle);
        Handle_Geom2d_Geometry(const Geom2d_Geometry *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Geometry DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Geometry {
    Geom2d_Geometry* GetObject() {
    return (Geom2d_Geometry*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Geometry::~Handle_Geom2d_Geometry %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Geometry {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Transformation;
class Geom2d_Transformation : public MMgt_TShared {
	public:
		%feature("autodoc", "	* Creates an identity transformation.

	:rtype: None
") Geom2d_Transformation;
		 Geom2d_Transformation ();
		%feature("autodoc", "	* Creates a persistent copy of T.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Geom2d_Transformation;
		 Geom2d_Transformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Makes the transformation into a symmetrical transformation with respect to a point P. P is the center of the symmetry.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetMirror;
		void SetMirror (const gp_Pnt2d & P);
		%feature("autodoc", "	* Makes the transformation into a symmetrical transformation with respect to an axis A. A is the center of the axial symmetry.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") SetMirror;
		void SetMirror (const gp_Ax2d & A);
		%feature("autodoc", "	* Assigns to this transformation the geometric properties of a rotation at angle Ang (in radians) about point P.

	:param P:
	:type P: gp_Pnt2d
	:param Ang:
	:type Ang: float
	:rtype: None
") SetRotation;
		void SetRotation (const gp_Pnt2d & P,const Standard_Real Ang);
		%feature("autodoc", "	* Makes the transformation into a scale. P is the center of the scale and S is the scaling value.

	:param P:
	:type P: gp_Pnt2d
	:param S:
	:type S: float
	:rtype: None
") SetScale;
		void SetScale (const gp_Pnt2d & P,const Standard_Real S);
		%feature("autodoc", "	* Makes a transformation allowing passage from the coordinate system 'FromSystem1' to the coordinate system 'ToSystem2'.

	:param FromSystem1:
	:type FromSystem1: gp_Ax2d
	:param ToSystem2:
	:type ToSystem2: gp_Ax2d
	:rtype: None
") SetTransformation;
		void SetTransformation (const gp_Ax2d & FromSystem1,const gp_Ax2d & ToSystem2);
		%feature("autodoc", "	* Makes the transformation allowing passage from the basic coordinate system {P(0.,0.,0.), VX (1.,0.,0.), VY (0.,1.,0.)} to the local coordinate system defined with the Ax2d ToSystem.

	:param ToSystem:
	:type ToSystem: gp_Ax2d
	:rtype: None
") SetTransformation;
		void SetTransformation (const gp_Ax2d & ToSystem);
		%feature("autodoc", "	* Makes the transformation into a translation. V is the vector of the translation.

	:param V:
	:type V: gp_Vec2d
	:rtype: None
") SetTranslation;
		void SetTranslation (const gp_Vec2d & V);
		%feature("autodoc", "	* Makes the transformation into a translation from the point P1 to the point P2.

	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") SetTranslation;
		void SetTranslation (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	* Makes the transformation into a transformation T from package gp.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") SetTrsf2d;
		void SetTrsf2d (const gp_Trsf2d & T);
		%feature("autodoc", "	* Checks whether this transformation is an indirect transformation: returns true if the determinant of the matrix of the vectorial part of the transformation is less than 0.

	:rtype: bool
") IsNegative;
		Standard_Boolean IsNegative ();
		%feature("autodoc", "	* Returns the nature of this transformation as a value of the gp_TrsfForm enumeration. Returns the nature of the transformation. It can be Identity, Rotation, Translation, PntMirror, Ax1Mirror, Scale, CompoundTrsf

	:rtype: gp_TrsfForm
") Form;
		gp_TrsfForm Form ();
		%feature("autodoc", "	* Returns the scale value of the transformation.

	:rtype: float
") ScaleFactor;
		Standard_Real ScaleFactor ();
		%feature("autodoc", "	* Converts this transformation into a gp_Trsf2d transformation. Returns a non persistent copy of <self>. -C++: return const&

	:rtype: gp_Trsf2d
") Trsf2d;
		gp_Trsf2d Trsf2d ();
		%feature("autodoc", "	* Returns the coefficients of the global matrix of tranformation. It is a 2 rows X 3 columns matrix. Raised if Row < 1 or Row > 2 or Col < 1 or Col > 2 Computes the reverse transformation.

	:param Row:
	:type Row: Standard_Integer
	:param Col:
	:type Col: Standard_Integer
	:rtype: float
") Value;
		Standard_Real Value (const Standard_Integer Row,const Standard_Integer Col);
		%feature("autodoc", "	* Computes the inverse of this transformation. and assigns the result to this transformatio Raised if the the transformation is singular. This means that the ScaleFactor is lower or equal to Resolution from package gp.

	:rtype: None
") Invert;
		void Invert ();
		%feature("autodoc", "	* Computes the inverse of this transformation and creates a new one. Raises ConstructionError if the the transformation is singular. This means that the ScaleFactor is lower or equal to Resolution from package gp.

	:rtype: Handle_Geom2d_Transformation
") Inverted;
		Handle_Geom2d_Transformation Inverted ();
		%feature("autodoc", "	* Computes the transformation composed with Other and <self>. <self> * Other. Returns a new transformation

	:param Other:
	:type Other: Handle_Geom2d_Transformation &
	:rtype: Handle_Geom2d_Transformation
") Multiplied;
		Handle_Geom2d_Transformation Multiplied (const Handle_Geom2d_Transformation & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Transformation &
	:rtype: Handle_Geom2d_Transformation
") operator*;
		Handle_Geom2d_Transformation operator * (const Handle_Geom2d_Transformation & Other);
		%feature("autodoc", "	* Computes the transformation composed with Other and <self> . <self> = <self> * Other. Computes the following composition of transformations if N > 0 <self> * <self> * .......* <self>. if N = 0 Identity if N < 0 <self>.Invert() * .........* <self>.Invert()

	:param Other:
	:type Other: Handle_Geom2d_Transformation &
	:rtype: None
") Multiply;
		void Multiply (const Handle_Geom2d_Transformation & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Transformation &
	:rtype: None
") operator*=;
		void operator *= (const Handle_Geom2d_Transformation & Other);
		%feature("autodoc", "	* Raised if N < 0 and if the transformation is not inversible

	:param N:
	:type N: Standard_Integer
	:rtype: None
") Power;
		void Power (const Standard_Integer N);
		%feature("autodoc", "	* Raised if N < 0 and if the transformation is not inversible

	:param N:
	:type N: Standard_Integer
	:rtype: Handle_Geom2d_Transformation
") Powered;
		Handle_Geom2d_Transformation Powered (const Standard_Integer N);
		%feature("autodoc", "	* Computes the matrix of the transformation composed with <self> and Other. <self> = Other * <self>

	:param Other:
	:type Other: Handle_Geom2d_Transformation &
	:rtype: None
") PreMultiply;
		void PreMultiply (const Handle_Geom2d_Transformation & Other);
		%feature("autodoc", "	* Applies the transformation <self> to the triplet {X, Y}.

	:param X:
	:type X: float &
	:param Y:
	:type Y: float &
	:rtype: None
") Transforms;
		void Transforms (Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Creates a new object, which is a copy of this transformation.

	:rtype: Handle_Geom2d_Transformation
") Copy;
		Handle_Geom2d_Transformation Copy ();
};


%feature("shadow") Geom2d_Transformation::~Geom2d_Transformation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Transformation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Transformation {
	Handle_Geom2d_Transformation GetHandle() {
	return *(Handle_Geom2d_Transformation*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Transformation;
class Handle_Geom2d_Transformation : public Handle_MMgt_TShared {

    public:
        // constructors
        Handle_Geom2d_Transformation();
        Handle_Geom2d_Transformation(const Handle_Geom2d_Transformation &aHandle);
        Handle_Geom2d_Transformation(const Geom2d_Transformation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Transformation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Transformation {
    Geom2d_Transformation* GetObject() {
    return (Geom2d_Transformation*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Transformation::~Handle_Geom2d_Transformation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Transformation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_AxisPlacement;
class Geom2d_AxisPlacement : public Geom2d_Geometry {
	public:
		%feature("autodoc", "	* Constructs an axis by conversion of the gp_Ax2d axis A.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") Geom2d_AxisPlacement;
		 Geom2d_AxisPlacement (const gp_Ax2d & A);
		%feature("autodoc", "	* Constructs an axis from a given origin P and unit vector V.

	:param P:
	:type P: gp_Pnt2d
	:param V:
	:type V: gp_Dir2d
	:rtype: None
") Geom2d_AxisPlacement;
		 Geom2d_AxisPlacement (const gp_Pnt2d & P,const gp_Dir2d & V);
		%feature("autodoc", "	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Reverses the unit vector of this axis. Note: - Reverse assigns the result to this axis, while - Reversed creates a new one.

	:rtype: Handle_Geom2d_AxisPlacement
") Reversed;
		Handle_Geom2d_AxisPlacement Reversed ();
		%feature("autodoc", "	* Changes the complete definition of the axis placement.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") SetAxis;
		void SetAxis (const gp_Ax2d & A);
		%feature("autodoc", "	* Changes the 'Direction' of the axis placement.

	:param V:
	:type V: gp_Dir2d
	:rtype: None
") SetDirection;
		void SetDirection (const gp_Dir2d & V);
		%feature("autodoc", "	* Changes the 'Location' point (origin) of the axis placement.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetLocation;
		void SetLocation (const gp_Pnt2d & P);
		%feature("autodoc", "	* Computes the angle between the 'Direction' of two axis placement in radians. The result is comprised between -Pi and Pi.

	:param Other:
	:type Other: Handle_Geom2d_AxisPlacement &
	:rtype: float
") Angle;
		Standard_Real Angle (const Handle_Geom2d_AxisPlacement & Other);
		%feature("autodoc", "	* Converts this axis into a gp_Ax2d axis.

	:rtype: gp_Ax2d
") Ax2d;
		gp_Ax2d Ax2d ();
		%feature("autodoc", "	* Returns the 'Direction' of <self>. -C++: return const&

	:rtype: gp_Dir2d
") Direction;
		gp_Dir2d Direction ();
		%feature("autodoc", "	* Returns the 'Location' point (origin) of the axis placement. -C++: return const&

	:rtype: gp_Pnt2d
") Location;
		gp_Pnt2d Location ();
		%feature("autodoc", "	* Applies the transformation T to this axis.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this axis.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_AxisPlacement::~Geom2d_AxisPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_AxisPlacement {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_AxisPlacement {
	Handle_Geom2d_AxisPlacement GetHandle() {
	return *(Handle_Geom2d_AxisPlacement*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_AxisPlacement;
class Handle_Geom2d_AxisPlacement : public Handle_Geom2d_Geometry {

    public:
        // constructors
        Handle_Geom2d_AxisPlacement();
        Handle_Geom2d_AxisPlacement(const Handle_Geom2d_AxisPlacement &aHandle);
        Handle_Geom2d_AxisPlacement(const Geom2d_AxisPlacement *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_AxisPlacement DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_AxisPlacement {
    Geom2d_AxisPlacement* GetObject() {
    return (Geom2d_AxisPlacement*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_AxisPlacement::~Handle_Geom2d_AxisPlacement %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_AxisPlacement {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Curve;
class Geom2d_Curve : public Geom2d_Geometry {
	public:
		%feature("autodoc", "	* Changes the direction of parametrization of <self>. The 'FirstParameter' and the 'LastParameter' are not changed but the orientation of the curve is modified. If the curve is bounded the StartPoint of the initial curve becomes the EndPoint of the reversed curve and the EndPoint of the initial curve becomes the StartPoint of the reversed curve.

	:rtype: void
") Reverse;
		virtual void Reverse ();
		%feature("autodoc", "	* Computes the parameter on the reversed curve for the point of parameter U on this curve. Note: The point of parameter U on this curve is identical to the point of parameter ReversedParameter(U) on the reversed curve.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		virtual Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Computes the parameter on the curve transformed by T for the point of parameter U on this curve. Note: this function generally returns U but it can be redefined (for example, on a line).

	:param U:
	:type U: float
	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") TransformedParameter;
		virtual Standard_Real TransformedParameter (const Standard_Real U,const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the coefficient required to compute the parametric transformation of this curve when transformation T is applied. This coefficient is the ratio between the parameter of a point on this curve and the parameter of the transformed point on the new curve transformed by T. Note: this function generally returns 1. but it can be redefined (for example, on a line).

	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") ParametricTransformation;
		virtual Standard_Real ParametricTransformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a reversed duplicate Changes the orientation of this curve. The first and last parameters are not changed, but the parametric direction of the curve is reversed. If the curve is bounded: - the start point of the initial curve becomes the end point of the reversed curve, and - the end point of the initial curve becomes the start point of the reversed curve. - Reversed creates a new curve.

	:rtype: Handle_Geom2d_Curve
") Reversed;
		Handle_Geom2d_Curve Reversed ();
		%feature("autodoc", "	* Returns the value of the first parameter. Warnings : It can be RealFirst or RealLast from package Standard if the curve is infinite

	:rtype: float
") FirstParameter;
		virtual Standard_Real FirstParameter ();
		%feature("autodoc", "	* Value of the last parameter. Warnings : It can be RealFirst or RealLast from package Standard if the curve is infinite

	:rtype: float
") LastParameter;
		virtual Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns true if the curve is closed. Examples : Some curves such as circle are always closed, others such as line are never closed (by definition). Some Curves such as OffsetCurve can be closed or not. These curves are considered as closed if the distance between the first point and the last point of the curve is lower or equal to the Resolution from package gp wich is a fixed criterion independant of the application.

	:rtype: bool
") IsClosed;
		virtual Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Returns true if the parameter of the curve is periodic. It is possible only if the curve is closed and if the following relation is satisfied : for each parametric value U the distance between the point P(u) and the point P (u + T) is lower or equal to Resolution from package gp, T is the period and must be a constant. There are three possibilities : . the curve is never periodic by definition (SegmentLine) . the curve is always periodic by definition (Circle) . the curve can be defined as periodic (BSpline). In this case a function SetPeriodic allows you to give the shape of the curve. The general rule for this case is : if a curve can be periodic or not the default periodicity set is non periodic and you have to turn (explicitly) the curve into a periodic curve if you want the curve to be periodic.

	:rtype: bool
") IsPeriodic;
		virtual Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns thne period of this curve. raises if the curve is not periodic

	:rtype: float
") Period;
		virtual Standard_Real Period ();
		%feature("autodoc", "	* It is the global continuity of the curve : C0 : only geometric continuity, C1 : continuity of the first derivative all along the Curve, C2 : continuity of the second derivative all along the Curve, C3 : continuity of the third derivative all along the Curve, G1 : tangency continuity all along the Curve, G2 : curvature continuity all along the Curve, CN : the order of continuity is infinite.

	:rtype: GeomAbs_Shape
") Continuity;
		virtual GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Returns true if the degree of continuity of this curve is at least N. Exceptions Standard_RangeError if N is less than 0.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		virtual Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Returns in P the point of parameter U. If the curve is periodic then the returned point is P(U) with U = Ustart + (U - Uend) where Ustart and Uend are the parametric bounds of the curve. Raised only for the 'OffsetCurve' if it is not possible to compute the current point. For example when the first derivative on the basis curve and the offset direction are parallel.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: void
") D0;
		virtual void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the point P of parameter U and the first derivative V1. Raised if the continuity of the curve is not C1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: void
") D1;
		virtual void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U, the first and second derivatives V1 and V2. Raised if the continuity of the curve is not C2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: void
") D2;
		virtual void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Returns the point P of parameter U, the first, the second and the third derivative. Raised if the continuity of the curve is not C3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: void
") D3;
		virtual void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this curve, computes the vector corresponding to the Nth derivative. Exceptions StdFail_UndefinedDerivative if: - the continuity of the curve is not 'CN', or - the derivative vector cannot be computed easily; this is the case with specific types of curve (for example, a rational BSpline curve where N is greater than 3). Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		virtual gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Computes the point of parameter U on <self>. If the curve is periodic then the returned point is P(U) with U = Ustart + (U - Uend) where Ustart and Uend are the parametric bounds of the curve. it is implemented with D0. Raised only for the 'OffsetCurve' if it is not possible to compute the current point. For example when the first derivative on the basis curve and the offset direction are parallel.

	:param U:
	:type U: float
	:rtype: gp_Pnt2d
") Value;
		gp_Pnt2d Value (const Standard_Real U);
};


%feature("shadow") Geom2d_Curve::~Geom2d_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Curve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Curve {
	Handle_Geom2d_Curve GetHandle() {
	return *(Handle_Geom2d_Curve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Curve;
class Handle_Geom2d_Curve : public Handle_Geom2d_Geometry {

    public:
        // constructors
        Handle_Geom2d_Curve();
        Handle_Geom2d_Curve(const Handle_Geom2d_Curve &aHandle);
        Handle_Geom2d_Curve(const Geom2d_Curve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Curve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Curve {
    Geom2d_Curve* GetObject() {
    return (Geom2d_Curve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Curve::~Handle_Geom2d_Curve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Curve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Point;
class Geom2d_Point : public Geom2d_Geometry {
	public:
		%feature("autodoc", "	* returns the Coordinates of <self>.

	:param X:
	:type X: float &
	:param Y:
	:type Y: float &
	:rtype: void
") Coord;
		virtual void Coord (Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* returns a non persistent copy of <self>

	:rtype: gp_Pnt2d
") Pnt2d;
		virtual gp_Pnt2d Pnt2d ();
		%feature("autodoc", "	* returns the X coordinate of <self>.

	:rtype: float
") X;
		virtual Standard_Real X ();
		%feature("autodoc", "	* returns the Y coordinate of <self>.

	:rtype: float
") Y;
		virtual Standard_Real Y ();
		%feature("autodoc", "	* computes the distance between <self> and <Other>.

	:param Other:
	:type Other: Handle_Geom2d_Point &
	:rtype: float
") Distance;
		Standard_Real Distance (const Handle_Geom2d_Point & Other);
		%feature("autodoc", "	* computes the square distance between <self> and <Other>.

	:param Other:
	:type Other: Handle_Geom2d_Point &
	:rtype: float
") SquareDistance;
		Standard_Real SquareDistance (const Handle_Geom2d_Point & Other);
};


%feature("shadow") Geom2d_Point::~Geom2d_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Point {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Point {
	Handle_Geom2d_Point GetHandle() {
	return *(Handle_Geom2d_Point*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Point;
class Handle_Geom2d_Point : public Handle_Geom2d_Geometry {

    public:
        // constructors
        Handle_Geom2d_Point();
        Handle_Geom2d_Point(const Handle_Geom2d_Point &aHandle);
        Handle_Geom2d_Point(const Geom2d_Point *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Point DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Point {
    Geom2d_Point* GetObject() {
    return (Geom2d_Point*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Point::~Handle_Geom2d_Point %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Point {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Vector;
class Geom2d_Vector : public Geom2d_Geometry {
	public:
		%feature("autodoc", "	* Reverses the vector <self>.

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Returns a copy of <self> reversed.

	:rtype: Handle_Geom2d_Vector
") Reversed;
		Handle_Geom2d_Vector Reversed ();
		%feature("autodoc", "	* Computes the angular value, in radians, between this vector and vector Other. The result is a value between -Pi and Pi. The orientation is from this vector to vector Other. Raises VectorWithNullMagnitude if one of the two vectors is a vector with null magnitude because the angular value is indefinite.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") Angle;
		Standard_Real Angle (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Returns the coordinates of <self>.

	:param X:
	:type X: float &
	:param Y:
	:type Y: float &
	:rtype: None
") Coord;
		void Coord (Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns the Magnitude of <self>.

	:rtype: float
") Magnitude;
		virtual Standard_Real Magnitude ();
		%feature("autodoc", "	* Returns the square magnitude of <self>.

	:rtype: float
") SquareMagnitude;
		virtual Standard_Real SquareMagnitude ();
		%feature("autodoc", "	* Returns the X coordinate of <self>.

	:rtype: float
") X;
		Standard_Real X ();
		%feature("autodoc", "	* Returns the Y coordinate of <self>.

	:rtype: float
") Y;
		Standard_Real Y ();
		%feature("autodoc", "	* Cross product of <self> with the vector <Other>.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") Crossed;
		virtual Standard_Real Crossed (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Returns the scalar product of 2 Vectors.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") Dot;
		Standard_Real Dot (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Returns a non persistent copy of <self>.

	:rtype: gp_Vec2d
") Vec2d;
		gp_Vec2d Vec2d ();
};


%feature("shadow") Geom2d_Vector::~Geom2d_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Vector {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Vector {
	Handle_Geom2d_Vector GetHandle() {
	return *(Handle_Geom2d_Vector*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Vector;
class Handle_Geom2d_Vector : public Handle_Geom2d_Geometry {

    public:
        // constructors
        Handle_Geom2d_Vector();
        Handle_Geom2d_Vector(const Handle_Geom2d_Vector &aHandle);
        Handle_Geom2d_Vector(const Geom2d_Vector *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Vector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Vector {
    Geom2d_Vector* GetObject() {
    return (Geom2d_Vector*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Vector::~Handle_Geom2d_Vector %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Vector {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_BoundedCurve;
class Geom2d_BoundedCurve : public Geom2d_Curve {
	public:
		%feature("autodoc", "	* Returns the end point of the curve. The end point is the value of the curve for the 'LastParameter' of the curve.

	:rtype: gp_Pnt2d
") EndPoint;
		virtual gp_Pnt2d EndPoint ();
		%feature("autodoc", "	* Returns the start point of the curve. The start point is the value of the curve for the 'FirstParameter' of the curve.

	:rtype: gp_Pnt2d
") StartPoint;
		virtual gp_Pnt2d StartPoint ();
};


%feature("shadow") Geom2d_BoundedCurve::~Geom2d_BoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_BoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_BoundedCurve {
	Handle_Geom2d_BoundedCurve GetHandle() {
	return *(Handle_Geom2d_BoundedCurve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_BoundedCurve;
class Handle_Geom2d_BoundedCurve : public Handle_Geom2d_Curve {

    public:
        // constructors
        Handle_Geom2d_BoundedCurve();
        Handle_Geom2d_BoundedCurve(const Handle_Geom2d_BoundedCurve &aHandle);
        Handle_Geom2d_BoundedCurve(const Geom2d_BoundedCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_BoundedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BoundedCurve {
    Geom2d_BoundedCurve* GetObject() {
    return (Geom2d_BoundedCurve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_BoundedCurve::~Handle_Geom2d_BoundedCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_BoundedCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_CartesianPoint;
class Geom2d_CartesianPoint : public Geom2d_Point {
	public:
		%feature("autodoc", "	* Returns a persistent copy of P.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") Geom2d_CartesianPoint;
		 Geom2d_CartesianPoint (const gp_Pnt2d & P);
		%feature("autodoc", "	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") Geom2d_CartesianPoint;
		 Geom2d_CartesianPoint (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	* Set <self> to X, Y coordinates.

	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") SetCoord;
		void SetCoord (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	* Set <self> to P.X(), P.Y() coordinates.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetPnt2d;
		void SetPnt2d (const gp_Pnt2d & P);
		%feature("autodoc", "	* Changes the X coordinate of me.

	:param X:
	:type X: float
	:rtype: None
") SetX;
		void SetX (const Standard_Real X);
		%feature("autodoc", "	* Changes the Y coordinate of me.

	:param Y:
	:type Y: float
	:rtype: None
") SetY;
		void SetY (const Standard_Real Y);
		%feature("autodoc", "	* Returns the coordinates of <self>.

	:param X:
	:type X: float &
	:param Y:
	:type Y: float &
	:rtype: None
") Coord;
		void Coord (Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns a non persistent cartesian point with the same coordinates as <self>. -C++: return const&

	:rtype: gp_Pnt2d
") Pnt2d;
		gp_Pnt2d Pnt2d ();
		%feature("autodoc", "	* Returns the X coordinate of <self>.

	:rtype: float
") X;
		Standard_Real X ();
		%feature("autodoc", "	* Returns the Y coordinate of <self>.

	:rtype: float
") Y;
		Standard_Real Y ();
		%feature("autodoc", "	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_CartesianPoint::~Geom2d_CartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_CartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_CartesianPoint {
	Handle_Geom2d_CartesianPoint GetHandle() {
	return *(Handle_Geom2d_CartesianPoint*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_CartesianPoint;
class Handle_Geom2d_CartesianPoint : public Handle_Geom2d_Point {

    public:
        // constructors
        Handle_Geom2d_CartesianPoint();
        Handle_Geom2d_CartesianPoint(const Handle_Geom2d_CartesianPoint &aHandle);
        Handle_Geom2d_CartesianPoint(const Geom2d_CartesianPoint *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_CartesianPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_CartesianPoint {
    Geom2d_CartesianPoint* GetObject() {
    return (Geom2d_CartesianPoint*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_CartesianPoint::~Handle_Geom2d_CartesianPoint %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_CartesianPoint {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Conic;
class Geom2d_Conic : public Geom2d_Curve {
	public:
		%feature("autodoc", "	* Modifies this conic, redefining its local coordinate system partially, by assigning P as its origin

	:param A:
	:type A: gp_Ax22d
	:rtype: None
") SetAxis;
		void SetAxis (const gp_Ax22d & A);
		%feature("autodoc", "	:param A:
	:type A: gp_Ax2d
	:rtype: None
") SetXAxis;
		void SetXAxis (const gp_Ax2d & A);
		%feature("autodoc", "	* Assigns the origin and unit vector of axis A to the origin of the local coordinate system of this conic and either: - its 'X Direction', or - its 'Y Direction'. The other unit vector of the local coordinate system of this conic is recomputed normal to A, without changing the orientation of the local coordinate system (right-handed or left-handed).

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") SetYAxis;
		void SetYAxis (const gp_Ax2d & A);
		%feature("autodoc", "	* Modifies this conic, redefining its local coordinate system fully, by assigning A as this coordinate system.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetLocation;
		void SetLocation (const gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the 'XAxis' of the conic. This axis defines the origin of parametrization of the conic. This axis and the 'Yaxis' define the local coordinate system of the conic. -C++: return const&

	:rtype: gp_Ax2d
") XAxis;
		gp_Ax2d XAxis ();
		%feature("autodoc", "	* Returns the 'YAxis' of the conic. The 'YAxis' is perpendicular to the 'Xaxis'.

	:rtype: gp_Ax2d
") YAxis;
		gp_Ax2d YAxis ();
		%feature("autodoc", "	* returns the eccentricity value of the conic e. e = 0 for a circle 0 < e < 1 for an ellipse (e = 0 if MajorRadius = MinorRadius) e > 1 for a hyperbola e = 1 for a parabola

	:rtype: float
") Eccentricity;
		virtual Standard_Real Eccentricity ();
		%feature("autodoc", "	* Returns the location point of the conic. For the circle, the ellipse and the hyperbola it is the center of the conic. For the parabola it is the vertex of the parabola.

	:rtype: gp_Pnt2d
") Location;
		gp_Pnt2d Location ();
		%feature("autodoc", "	* Returns the local coordinates system of the conic.

	:rtype: gp_Ax22d
") Position;
		const gp_Ax22d  Position ();
		%feature("autodoc", "	* Reverses the direction of parameterization of <self>. The local coordinate system of the conic is modified.

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Returns the parameter on the reversed curve for the point of parameter U on <self>.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		virtual Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Returns GeomAbs_CN which is the global continuity of any conic.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Returns True, the order of continuity of a conic is infinite.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
};


%feature("shadow") Geom2d_Conic::~Geom2d_Conic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Conic {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Conic {
	Handle_Geom2d_Conic GetHandle() {
	return *(Handle_Geom2d_Conic*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Conic;
class Handle_Geom2d_Conic : public Handle_Geom2d_Curve {

    public:
        // constructors
        Handle_Geom2d_Conic();
        Handle_Geom2d_Conic(const Handle_Geom2d_Conic &aHandle);
        Handle_Geom2d_Conic(const Geom2d_Conic *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Conic DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Conic {
    Geom2d_Conic* GetObject() {
    return (Geom2d_Conic*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Conic::~Handle_Geom2d_Conic %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Conic {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Direction;
class Geom2d_Direction : public Geom2d_Vector {
	public:
		%feature("autodoc", "	* Creates a unit vector with it 2 cartesian coordinates. Raised if Sqrt( X*X + Y*Y) <= Resolution from gp.

	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") Geom2d_Direction;
		 Geom2d_Direction (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	* Creates a persistent copy of <self>.

	:param V:
	:type V: gp_Dir2d
	:rtype: None
") Geom2d_Direction;
		 Geom2d_Direction (const gp_Dir2d & V);
		%feature("autodoc", "	* Assigns the coordinates X and Y to this unit vector, then normalizes it. Exceptions Standard_ConstructionError if Sqrt(X*X + Y*Y) is less than or equal to gp::Resolution().

	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") SetCoord;
		void SetCoord (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	* Converts the gp_Dir2d unit vector V into this unit vector.

	:param V:
	:type V: gp_Dir2d
	:rtype: None
") SetDir2d;
		void SetDir2d (const gp_Dir2d & V);
		%feature("autodoc", "	* Assigns a value to the X coordinate of this unit vector, then normalizes it. Exceptions Standard_ConstructionError if the value assigned causes the magnitude of the vector to become less than or equal to gp::Resolution().

	:param X:
	:type X: float
	:rtype: None
") SetX;
		void SetX (const Standard_Real X);
		%feature("autodoc", "	* Assigns a value to the Y coordinate of this unit vector, then normalizes it. Exceptions Standard_ConstructionError if the value assigned causes the magnitude of the vector to become less than or equal to gp::Resolution().

	:param Y:
	:type Y: float
	:rtype: None
") SetY;
		void SetY (const Standard_Real Y);
		%feature("autodoc", "	* Converts this unit vector into a gp_Dir2d unit vector.

	:rtype: gp_Dir2d
") Dir2d;
		gp_Dir2d Dir2d ();
		%feature("autodoc", "	* returns 1.0

	:rtype: float
") Magnitude;
		Standard_Real Magnitude ();
		%feature("autodoc", "	* returns 1.0

	:rtype: float
") SquareMagnitude;
		Standard_Real SquareMagnitude ();
		%feature("autodoc", "	* Computes the cross product between <self> and <Other>.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") Crossed;
		Standard_Real Crossed (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") operator^;
		Standard_Real operator ^ (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Applies the transformation T to this unit vector, then normalizes it.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this unit vector.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Direction::~Geom2d_Direction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Direction {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Direction {
	Handle_Geom2d_Direction GetHandle() {
	return *(Handle_Geom2d_Direction*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Direction;
class Handle_Geom2d_Direction : public Handle_Geom2d_Vector {

    public:
        // constructors
        Handle_Geom2d_Direction();
        Handle_Geom2d_Direction(const Handle_Geom2d_Direction &aHandle);
        Handle_Geom2d_Direction(const Geom2d_Direction *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Direction DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Direction {
    Geom2d_Direction* GetObject() {
    return (Geom2d_Direction*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Direction::~Handle_Geom2d_Direction %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Direction {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Line;
class Geom2d_Line : public Geom2d_Curve {
	public:
		%feature("autodoc", "	* Creates a line located in 2D space with the axis placement A. The Location of A is the origin of the line.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") Geom2d_Line;
		 Geom2d_Line (const gp_Ax2d & A);
		%feature("autodoc", "	* Creates a line by conversion of the gp_Lin2d line L.

	:param L:
	:type L: gp_Lin2d
	:rtype: None
") Geom2d_Line;
		 Geom2d_Line (const gp_Lin2d & L);
		%feature("autodoc", "	* Constructs a line passing through point P and parallel to vector V (P and V are, respectively, the origin and the unit vector of the positioning axis of the line).

	:param P:
	:type P: gp_Pnt2d
	:param V:
	:type V: gp_Dir2d
	:rtype: None
") Geom2d_Line;
		 Geom2d_Line (const gp_Pnt2d & P,const gp_Dir2d & V);
		%feature("autodoc", "	* Set <self> so that <self> has the same geometric properties as L.

	:param L:
	:type L: gp_Lin2d
	:rtype: None
") SetLin2d;
		void SetLin2d (const gp_Lin2d & L);
		%feature("autodoc", "	* changes the direction of the line.

	:param V:
	:type V: gp_Dir2d
	:rtype: None
") SetDirection;
		void SetDirection (const gp_Dir2d & V);
		%feature("autodoc", "	* changes the direction of the line.

	:rtype: gp_Dir2d
") Direction;
		const gp_Dir2d  Direction ();
		%feature("autodoc", "	* Changes the 'Location' point (origin) of the line.

	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetLocation;
		void SetLocation (const gp_Pnt2d & P);
		%feature("autodoc", "	* Changes the 'Location' point (origin) of the line.

	:rtype: gp_Pnt2d
") Location;
		const gp_Pnt2d  Location ();
		%feature("autodoc", "	* Changes the 'Location' and a the 'Direction' of <self>.

	:param A:
	:type A: gp_Ax2d
	:rtype: None
") SetPosition;
		void SetPosition (const gp_Ax2d & A);
		%feature("autodoc", "	:rtype: gp_Ax2d
") Position;
		const gp_Ax2d  Position ();
		%feature("autodoc", "	* Returns non persistent line from gp with the same geometric properties as <self>

	:rtype: gp_Lin2d
") Lin2d;
		gp_Lin2d Lin2d ();
		%feature("autodoc", "	* Changes the orientation of this line. As a result, the unit vector of the positioning axis of this line is reversed.

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Computes the parameter on the reversed line for the point of parameter U on this line. For a line, the returned value is -U.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Returns RealFirst from Standard.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns RealLast from Standard

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns False

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Returns False

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns GeomAbs_CN, which is the global continuity of any line.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Computes the distance between <self> and the point P.

	:param P:
	:type P: gp_Pnt2d
	:rtype: float
") Distance;
		Standard_Real Distance (const gp_Pnt2d & P);
		%feature("autodoc", "	* Returns True.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Returns in P the point of parameter U. P (U) = O + U * Dir where O is the 'Location' point of the line and Dir the direction of the line.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the point P of parameter u and the first derivative V1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U, the first and second derivatives V1 and V2. V2 is a vector with null magnitude for a line.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* V2 and V3 are vectors with null magnitude for a line.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this line, computes the vector corresponding to the Nth derivative. Note: if N is greater than or equal to 2, the result is a vector with null magnitude. Exceptions Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this line.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Computes the parameter on the line transformed by T for the point of parameter U on this line. For a line, the returned value is equal to U multiplied by the scale factor of transformation T.

	:param U:
	:type U: float
	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") TransformedParameter;
		virtual Standard_Real TransformedParameter (const Standard_Real U,const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the coefficient required to compute the parametric transformation of this line when transformation T is applied. This coefficient is the ratio between the parameter of a point on this line and the parameter of the transformed point on the new line transformed by T. For a line, the returned value is the scale factor of the transformation T.

	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") ParametricTransformation;
		virtual Standard_Real ParametricTransformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object, which is a copy of this line.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Line::~Geom2d_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Line {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Line {
	Handle_Geom2d_Line GetHandle() {
	return *(Handle_Geom2d_Line*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Line;
class Handle_Geom2d_Line : public Handle_Geom2d_Curve {

    public:
        // constructors
        Handle_Geom2d_Line();
        Handle_Geom2d_Line(const Handle_Geom2d_Line &aHandle);
        Handle_Geom2d_Line(const Geom2d_Line *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Line DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Line {
    Geom2d_Line* GetObject() {
    return (Geom2d_Line*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Line::~Handle_Geom2d_Line %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Line {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_OffsetCurve;
class Geom2d_OffsetCurve : public Geom2d_Curve {
	public:
		%feature("autodoc", "	* Constructs a curve offset from the basis curve C, where Offset is the distance between the offset curve and the basis curve at any point. A point on the offset curve is built by measuring the offset value along a normal vector at a point on C. This normal vector is obtained by rotating the vector tangential to C at 90 degrees in the anti-trigonometric sense. The side of C on which the offset value is measured is indicated by this normal vector if Offset is positive, or in the inverse sense if Offset is negative. Warnings : In this package the entities are not shared. The OffsetCurve is built with a copy of the curve C. So when C is modified the OffsetCurve is not modified Warning! ConstructionError raised if the basis curve C is not at least C1. No check is done to know if ||V^Z|| != 0.0 at any point.

	:param C:
	:type C: Handle_Geom2d_Curve &
	:param Offset:
	:type Offset: float
	:rtype: None
") Geom2d_OffsetCurve;
		 Geom2d_OffsetCurve (const Handle_Geom2d_Curve & C,const Standard_Real Offset);
		%feature("autodoc", "	* Changes the direction of parametrization of <self>. As a result: - the basis curve is reversed, - the start point of the initial curve becomes the end point of the reversed curve, - the end point of the initial curve becomes the start point of the reversed curve, and - the first and last parameters are recomputed.

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Computes the parameter on the reversed curve for the point of parameter U on this offset curve.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Changes this offset curve by assigning C as the basis curve from which it is built. Exceptions Standard_ConstructionError if the curve C is not at least 'C1' continuous.

	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: None
") SetBasisCurve;
		void SetBasisCurve (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	* Changes this offset curve by assigning D as the offset value.

	:param D:
	:type D: float
	:rtype: None
") SetOffsetValue;
		void SetOffsetValue (const Standard_Real D);
		%feature("autodoc", "	* Returns the basis curve of this offset curve. The basis curve can be an offset curve.

	:rtype: Handle_Geom2d_Curve
") BasisCurve;
		Handle_Geom2d_Curve BasisCurve ();
		%feature("autodoc", "	* Continuity of the Offset curve : C0 : only geometric continuity, C1 : continuity of the first derivative all along the Curve, C2 : continuity of the second derivative all along the Curve, C3 : continuity of the third derivative all along the Curve, G1 : tangency continuity all along the Curve, G2 : curvature continuity all along the Curve, CN : the order of continuity is infinite. Warnings : Returns the continuity of the basis curve - 1. The offset curve must have a unique normal direction defined at any point. Value and derivatives Warnings : The exception UndefinedValue or UndefinedDerivative is raised if it is not possible to compute a unique offset direction. If T is the first derivative with not null length and Z the direction normal to the plane of the curve, the relation ||T(U) ^ Z|| != 0 must be satisfied to evaluate the offset curve. No check is done at the creation time and we suppose in this package that the offset curve is well defined.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Warning! this should not be called if the basis curve is not at least C1. Nevertheless if used on portion where the curve is C1, it is OK

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Warning! this should not be called if the continuity of the basis curve is not C2. Nevertheless, it's OK to use it on portion where the curve is C2

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Warning! This should not be called if the continuity of the basis curve is not C3. Nevertheless, it's OK to use it on portion where the curve is C3

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Warning! This should not be called if the continuity of the basis curve is not C4. Nevertheless, it's OK to use it on portion where the curve is C4

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* The returned vector gives the value of the derivative for the order of derivation N. Warning! this should not be called raises UndefunedDerivative if the continuity of the basis curve is not CN+1. Nevertheless, it's OK to use it on portion where the curve is CN+1 raises RangeError if N < 1. raises NotImplemented if N > 3. The following functions compute the value and derivatives on the offset curve and returns the derivatives on the basis curve too. The computation of the value and derivatives on the basis curve are used to evaluate the offset curve Warnings : The exception UndefinedValue or UndefinedDerivative is raised if it is not possible to compute a unique offset direction.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Warning! this should not be called if the basis curve is not at least C1. Nevertheless if used on portion where the curve is C1, it is OK

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param Pbasis:
	:type Pbasis: gp_Pnt2d
	:param V1basis:
	:type V1basis: gp_Vec2d
	:rtype: None
") Value;
		void Value (const Standard_Real U,gp_Pnt2d & P,gp_Pnt2d & Pbasis,gp_Vec2d & V1basis);
		%feature("autodoc", "	* Warning! this should not be called if the continuity of the basis curve is not C1. Nevertheless, it's OK to use it on portion where the curve is C1

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param Pbasis:
	:type Pbasis: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V1basis:
	:type V1basis: gp_Vec2d
	:param V2basis:
	:type V2basis: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Pnt2d & Pbasis,gp_Vec2d & V1,gp_Vec2d & V1basis,gp_Vec2d & V2basis);
		%feature("autodoc", "	* Warning! this should not be called if the continuity of the basis curve is not C3. Nevertheless, it's OK to use it on portion where the curve is C3

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param Pbasis:
	:type Pbasis: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V1basis:
	:type V1basis: gp_Vec2d
	:param V2basis:
	:type V2basis: gp_Vec2d
	:param V3basis:
	:type V3basis: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Pnt2d & Pbasis,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V1basis,gp_Vec2d & V2basis,gp_Vec2d & V3basis);
		%feature("autodoc", "	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns the value of the first or last parameter of this offset curve. The first parameter corresponds to the start point of the curve. The last parameter corresponds to the end point. Note: the first and last parameters of this offset curve are also the ones of its basis curve.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns the offset value of this offset curve.

	:rtype: float
") Offset;
		Standard_Real Offset ();
		%feature("autodoc", "	* Returns True if the distance between the start point and the end point of the curve is lower or equal to Resolution from package gp.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Is the order of continuity of the curve N ? Warnings : This method answer True if the continuity of the basis curve is N + 1. We suppose in this class that a normal direction to the basis curve (used to compute the offset curve) is defined at any point on the basis curve. Raised if N < 0.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Is the parametrization of a curve is periodic ? If the basis curve is a circle or an ellipse the corresponding OffsetCurve is periodic. If the basis curve can't be periodic (for example BezierCurve) the OffsetCurve can't be periodic.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns the period of this offset curve, i.e. the period of the basis curve of this offset curve. Exceptions Standard_NoSuchObject if the basis curve is not periodic.

	:rtype: float
") Period;
		virtual Standard_Real Period ();
		%feature("autodoc", "	* Applies the transformation T to this offset curve. Note: the basis curve is also modified.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the parameter on the transformed curve for the transform of the point of parameter U on <self>.  me->Transformed(T)->Value(me->TransformedParameter(U,T))  is the same point as  me->Value(U).Transformed(T)  This methods calls the basis curve method.

	:param U:
	:type U: float
	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") TransformedParameter;
		virtual Standard_Real TransformedParameter (const Standard_Real U,const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns a coefficient to compute the parameter on the transformed curve for the transform of the point on <self>.  Transformed(T)->Value(U * ParametricTransformation(T))  is the same point as  Value(U).Transformed(T)  This methods calls the basis curve method.

	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") ParametricTransformation;
		virtual Standard_Real ParametricTransformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object, which is a copy of this offset curve.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_OffsetCurve::~Geom2d_OffsetCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_OffsetCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_OffsetCurve {
	Handle_Geom2d_OffsetCurve GetHandle() {
	return *(Handle_Geom2d_OffsetCurve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_OffsetCurve;
class Handle_Geom2d_OffsetCurve : public Handle_Geom2d_Curve {

    public:
        // constructors
        Handle_Geom2d_OffsetCurve();
        Handle_Geom2d_OffsetCurve(const Handle_Geom2d_OffsetCurve &aHandle);
        Handle_Geom2d_OffsetCurve(const Geom2d_OffsetCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_OffsetCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_OffsetCurve {
    Geom2d_OffsetCurve* GetObject() {
    return (Geom2d_OffsetCurve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_OffsetCurve::~Handle_Geom2d_OffsetCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_OffsetCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_VectorWithMagnitude;
class Geom2d_VectorWithMagnitude : public Geom2d_Vector {
	public:
		%feature("autodoc", "	* Creates a persistent copy of V.

	:param V:
	:type V: gp_Vec2d
	:rtype: None
") Geom2d_VectorWithMagnitude;
		 Geom2d_VectorWithMagnitude (const gp_Vec2d & V);
		%feature("autodoc", "	* Creates a vector with two cartesian coordinates.

	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") Geom2d_VectorWithMagnitude;
		 Geom2d_VectorWithMagnitude (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	* Creates a vector from the point P1 to the point P2. The magnitude of the vector is the distance between P1 and P2

	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") Geom2d_VectorWithMagnitude;
		 Geom2d_VectorWithMagnitude (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	* Set <self> to X, Y coordinates.

	:param X:
	:type X: float
	:param Y:
	:type Y: float
	:rtype: None
") SetCoord;
		void SetCoord (const Standard_Real X,const Standard_Real Y);
		%feature("autodoc", "	:param V:
	:type V: gp_Vec2d
	:rtype: None
") SetVec2d;
		void SetVec2d (const gp_Vec2d & V);
		%feature("autodoc", "	* Changes the X coordinate of <self>.

	:param X:
	:type X: float
	:rtype: None
") SetX;
		void SetX (const Standard_Real X);
		%feature("autodoc", "	* Changes the Y coordinate of <self>

	:param Y:
	:type Y: float
	:rtype: None
") SetY;
		void SetY (const Standard_Real Y);
		%feature("autodoc", "	* Returns the magnitude of <self>.

	:rtype: float
") Magnitude;
		Standard_Real Magnitude ();
		%feature("autodoc", "	* Returns the square magnitude of <self>.

	:rtype: float
") SquareMagnitude;
		Standard_Real SquareMagnitude ();
		%feature("autodoc", "	* Adds the Vector Other to <self>.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: None
") Add;
		void Add (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: None
") operator+=;
		void operator += (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Adds the vector Other to <self>.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: Handle_Geom2d_VectorWithMagnitude
") Added;
		Handle_Geom2d_VectorWithMagnitude Added (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: Handle_Geom2d_VectorWithMagnitude
") operator+;
		Handle_Geom2d_VectorWithMagnitude operator + (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Computes the cross product between <self> and Other <self> ^ Other. A new vector is returned.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") Crossed;
		Standard_Real Crossed (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: float
") operator^;
		Standard_Real operator ^ (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Divides <self> by a scalar.

	:param Scalar:
	:type Scalar: float
	:rtype: None
") Divide;
		void Divide (const Standard_Real Scalar);
		%feature("autodoc", "	:param Scalar:
	:type Scalar: float
	:rtype: None
") operator/=;
		void operator /= (const Standard_Real Scalar);
		%feature("autodoc", "	* Divides <self> by a scalar. A new vector is returned.

	:param Scalar:
	:type Scalar: float
	:rtype: Handle_Geom2d_VectorWithMagnitude
") Divided;
		Handle_Geom2d_VectorWithMagnitude Divided (const Standard_Real Scalar);
		%feature("autodoc", "	:param Scalar:
	:type Scalar: float
	:rtype: Handle_Geom2d_VectorWithMagnitude
") operator/;
		Handle_Geom2d_VectorWithMagnitude operator / (const Standard_Real Scalar);
		%feature("autodoc", "	* Computes the product of the vector <self> by a scalar. A new vector is returned. -C++: alias operator * Collision with same operator defined for the class Vector!

	:param Scalar:
	:type Scalar: float
	:rtype: Handle_Geom2d_VectorWithMagnitude
") Multiplied;
		Handle_Geom2d_VectorWithMagnitude Multiplied (const Standard_Real Scalar);
		%feature("autodoc", "	* Computes the product of the vector <self> by a scalar.

	:param Scalar:
	:type Scalar: float
	:rtype: None
") Multiply;
		void Multiply (const Standard_Real Scalar);
		%feature("autodoc", "	:param Scalar:
	:type Scalar: float
	:rtype: None
") operator*=;
		void operator *= (const Standard_Real Scalar);
		%feature("autodoc", "	* Normalizes <self>. Raised if the magnitude of the vector is lower or equal to Resolution from package gp.

	:rtype: None
") Normalize;
		void Normalize ();
		%feature("autodoc", "	* Returns a copy of <self> Normalized. Raised if the magnitude of the vector is lower or equal to Resolution from package gp.

	:rtype: Handle_Geom2d_VectorWithMagnitude
") Normalized;
		Handle_Geom2d_VectorWithMagnitude Normalized ();
		%feature("autodoc", "	* Subtracts the Vector Other to <self>.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: None
") Subtract;
		void Subtract (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: None
") operator-=;
		void operator -= (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Subtracts the vector Other to <self>. A new vector is returned.

	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: Handle_Geom2d_VectorWithMagnitude
") Subtracted;
		Handle_Geom2d_VectorWithMagnitude Subtracted (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	:param Other:
	:type Other: Handle_Geom2d_Vector &
	:rtype: Handle_Geom2d_VectorWithMagnitude
") operator-;
		Handle_Geom2d_VectorWithMagnitude operator - (const Handle_Geom2d_Vector & Other);
		%feature("autodoc", "	* Applies the transformation T to this vector.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this vector.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_VectorWithMagnitude::~Geom2d_VectorWithMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_VectorWithMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_VectorWithMagnitude {
	Handle_Geom2d_VectorWithMagnitude GetHandle() {
	return *(Handle_Geom2d_VectorWithMagnitude*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_VectorWithMagnitude;
class Handle_Geom2d_VectorWithMagnitude : public Handle_Geom2d_Vector {

    public:
        // constructors
        Handle_Geom2d_VectorWithMagnitude();
        Handle_Geom2d_VectorWithMagnitude(const Handle_Geom2d_VectorWithMagnitude &aHandle);
        Handle_Geom2d_VectorWithMagnitude(const Geom2d_VectorWithMagnitude *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_VectorWithMagnitude DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_VectorWithMagnitude {
    Geom2d_VectorWithMagnitude* GetObject() {
    return (Geom2d_VectorWithMagnitude*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_VectorWithMagnitude::~Handle_Geom2d_VectorWithMagnitude %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_VectorWithMagnitude {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_BSplineCurve;
class Geom2d_BSplineCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "	* Creates a non-rational B_spline curve on the  basis <Knots, Multiplicities> of degree <Degree>. The following conditions must be verified. 0 < Degree <= MaxDegree. Knots.Length() == Mults.Length() >= 2 Knots(i) < Knots(i+1) (Knots are increasing) 1 <= Mults(i) <= Degree On a non periodic curve the first and last multiplicities may be Degree+1 (this is even recommanded if you want the curve to start and finish on the first and last pole). On a periodic curve the first and the last multicities must be the same. on non-periodic curves Poles.Length() == Sum(Mults(i)) - Degree - 1 >= 2 on periodic curves Poles.Length() == Sum(Mults(i)) except the first or last

	:param Poles:
	:type Poles: TColgp_Array1OfPnt2d
	:param Knots:
	:type Knots: TColStd_Array1OfReal &
	:param Multiplicities:
	:type Multiplicities: TColStd_Array1OfInteger &
	:param Degree:
	:type Degree: Standard_Integer
	:param Periodic: default value is Standard_False
	:type Periodic: bool
	:rtype: None
") Geom2d_BSplineCurve;
		 Geom2d_BSplineCurve (const TColgp_Array1OfPnt2d & Poles,const TColStd_Array1OfReal & Knots,const TColStd_Array1OfInteger & Multiplicities,const Standard_Integer Degree,const Standard_Boolean Periodic = Standard_False);
		%feature("autodoc", "	* Creates a rational B_spline curve on the basis  <Knots, Multiplicities> of degree <Degree>. The following conditions must be verified. 0 < Degree <= MaxDegree. Knots.Length() == Mults.Length() >= 2 Knots(i) < Knots(i+1) (Knots are increasing) 1 <= Mults(i) <= Degree On a non periodic curve the first and last multiplicities may be Degree+1 (this is even recommanded if you want the curve to start and finish on the first and last pole). On a periodic curve the first and the last multicities must be the same. on non-periodic curves Poles.Length() == Sum(Mults(i)) - Degree - 1 >= 2 on periodic curves Poles.Length() == Sum(Mults(i)) except the first or last

	:param Poles:
	:type Poles: TColgp_Array1OfPnt2d
	:param Weights:
	:type Weights: TColStd_Array1OfReal &
	:param Knots:
	:type Knots: TColStd_Array1OfReal &
	:param Multiplicities:
	:type Multiplicities: TColStd_Array1OfInteger &
	:param Degree:
	:type Degree: Standard_Integer
	:param Periodic: default value is Standard_False
	:type Periodic: bool
	:rtype: None
") Geom2d_BSplineCurve;
		 Geom2d_BSplineCurve (const TColgp_Array1OfPnt2d & Poles,const TColStd_Array1OfReal & Weights,const TColStd_Array1OfReal & Knots,const TColStd_Array1OfInteger & Multiplicities,const Standard_Integer Degree,const Standard_Boolean Periodic = Standard_False);
		%feature("autodoc", "	* Increases the degree of this BSpline curve to Degree. As a result, the poles, weights and multiplicities tables are modified; the knots table is not changed. Nothing is done if Degree is less than or equal to the current degree. Exceptions Standard_ConstructionError if Degree is greater than Geom2d_BSplineCurve::MaxDegree().

	:param Degree:
	:type Degree: Standard_Integer
	:rtype: None
") IncreaseDegree;
		void IncreaseDegree (const Standard_Integer Degree);
		%feature("autodoc", "	* //!Increases the multiplicity of the knot <Index> to  <M>. If <M> is lower or equal to the current  multiplicity nothing is done. If <M> is higher than  the degree the degree is used. If <Index> is not in [FirstUKnotIndex, LastUKnotIndex]

	:param Index:
	:type Index: Standard_Integer
	:param M:
	:type M: Standard_Integer
	:rtype: None
") IncreaseMultiplicity;
		void IncreaseMultiplicity (const Standard_Integer Index,const Standard_Integer M);
		%feature("autodoc", "	* //!Increases the multiplicities of the knots in  [I1,I2] to <M>. For each knot if <M> is lower or equal to the  current multiplicity nothing is done. If <M> is  higher than the degree the degree is used. As a result, the poles and weights tables of this curve are modified. Warning It is forbidden to modify the multiplicity of the first or last knot of a non-periodic curve. Be careful as Geom2d does not protect against this. Exceptions Standard_OutOfRange if either Index, I1 or I2 is outside the bounds of the knots table.

	:param I1:
	:type I1: Standard_Integer
	:param I2:
	:type I2: Standard_Integer
	:param M:
	:type M: Standard_Integer
	:rtype: None
") IncreaseMultiplicity;
		void IncreaseMultiplicity (const Standard_Integer I1,const Standard_Integer I2,const Standard_Integer M);
		%feature("autodoc", "	* Increases by M the multiplicity of the knots of indexes I1 to I2 in the knots table of this BSpline curve. For each knot, the resulting multiplicity is limited to the degree of this curve. If M is negative, nothing is done. As a result, the poles and weights tables of this BSpline curve are modified. Warning It is forbidden to modify the multiplicity of the first or last knot of a non-periodic curve. Be careful as Geom2d does not protect against this. Exceptions Standard_OutOfRange if I1 or I2 is outside the bounds of the knots table.

	:param I1:
	:type I1: Standard_Integer
	:param I2:
	:type I2: Standard_Integer
	:param M:
	:type M: Standard_Integer
	:rtype: None
") IncrementMultiplicity;
		void IncrementMultiplicity (const Standard_Integer I1,const Standard_Integer I2,const Standard_Integer M);
		%feature("autodoc", "	* Inserts a knot value in the sequence of knots. If <U> is an existing knot the multiplicity is increased by <M>.  If U is not on the parameter range nothing is done.  If the multiplicity is negative or null nothing is done. The new multiplicity is limited to the degree.  The tolerance criterion for knots equality is the max of Epsilon(U) and ParametricTolerance. Warning - If U is less than the first parameter or greater than the last parameter of this BSpline curve, nothing is done. - If M is negative or null, nothing is done. - The multiplicity of a knot is limited to the degree of this BSpline curve.

	:param U:
	:type U: float
	:param M: default value is 1
	:type M: Standard_Integer
	:param ParametricTolerance: default value is 0.0
	:type ParametricTolerance: float
	:rtype: None
") InsertKnot;
		void InsertKnot (const Standard_Real U,const Standard_Integer M = 1,const Standard_Real ParametricTolerance = 0.0);
		%feature("autodoc", "	* Inserts the values of the array Knots, with the respective multiplicities given by the array Mults, into the knots table of this BSpline curve. If a value of the array Knots is an existing knot, its multiplicity is: - increased by M, if Add is true, or - increased to M, if Add is false (default value). The tolerance criterion used for knot equality is the larger of the values ParametricTolerance (defaulted to 0.) and Standard_Real::Epsilon(U), where U is the current knot value. Warning - For a value of the array Knots which is less than the first parameter or greater than the last parameter of this BSpline curve, nothing is done. - For a value of the array Mults which is negative or null, nothing is done. - The multiplicity of a knot is limited to the degree of this BSpline curve.

	:param Knots:
	:type Knots: TColStd_Array1OfReal &
	:param Mults:
	:type Mults: TColStd_Array1OfInteger &
	:param ParametricTolerance: default value is 0.0
	:type ParametricTolerance: float
	:param Add: default value is Standard_False
	:type Add: bool
	:rtype: None
") InsertKnots;
		void InsertKnots (const TColStd_Array1OfReal & Knots,const TColStd_Array1OfInteger & Mults,const Standard_Real ParametricTolerance = 0.0,const Standard_Boolean Add = Standard_False);
		%feature("autodoc", "	* Reduces the multiplicity of the knot of index Index to M. If M is equal to 0, the knot is removed. With a modification of this type, the array of poles is also modified. Two different algorithms are systematically used to compute the new poles of the curve. If, for each pole, the distance between the pole calculated using the first algorithm and the same pole calculated using the second algorithm, is less than Tolerance, this ensures that the curve is not modified by more than Tolerance. Under these conditions, true is returned; otherwise, false is returned. A low tolerance is used to prevent modification of the curve. A high tolerance is used to 'smooth' the curve. Exceptions Standard_OutOfRange if Index is outside the bounds of the knots table.

	:param Index:
	:type Index: Standard_Integer
	:param M:
	:type M: Standard_Integer
	:param Tolerance:
	:type Tolerance: float
	:rtype: bool
") RemoveKnot;
		Standard_Boolean RemoveKnot (const Standard_Integer Index,const Standard_Integer M,const Standard_Real Tolerance);
		%feature("autodoc", "	* The new pole is inserted after the pole of range Index. If the curve was non rational it can become rational. Raised if the B-spline is NonUniform or PiecewiseBezier or if Weight <= 0.0 Raised if Index is not in the range [1, Number of Poles]

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight: default value is 1.0
	:type Weight: float
	:rtype: None
") InsertPoleAfter;
		void InsertPoleAfter (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight = 1.0);
		%feature("autodoc", "	* The new pole is inserted before the pole of range Index. If the curve was non rational it can become rational. Raised if the B-spline is NonUniform or PiecewiseBezier or if Weight <= 0.0 Raised if Index is not in the range [1, Number of Poles]

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight: default value is 1.0
	:type Weight: float
	:rtype: None
") InsertPoleBefore;
		void InsertPoleBefore (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight = 1.0);
		%feature("autodoc", "	* Removes the pole of range Index If the curve was rational it can become non rational. Raised if the B-spline is NonUniform or PiecewiseBezier. Raised if the number of poles of the B-spline curve is lower or equal to 2 before removing. Raised if Index is not in the range [1, Number of Poles]

	:param Index:
	:type Index: Standard_Integer
	:rtype: None
") RemovePole;
		void RemovePole (const Standard_Integer Index);
		%feature("autodoc", "	* Reverses the orientation of this BSpline curve. As a result - the knots and poles tables are modified; - the start point of the initial curve becomes the end point of the reversed curve; - the end point of the initial curve becomes the start point of the reversed curve.

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Computes the parameter on the reversed curve for the point of parameter U on this BSpline curve. The returned value is: UFirst + ULast - U, where UFirst and ULast are the values of the first and last parameters of this BSpline curve.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Modifies this BSpline curve by segmenting it between U1 and U2. Either of these values can be outside the bounds of the curve, but U2 must be greater than U1. All data structure tables of this BSpline curve are modified, but the knots located between U1 and U2 are retained. The degree of the curve is not modified. Warnings : Even if <self> is not closed it can become closed after the segmentation for example if U1 or U2 are out of the bounds of the curve <self> or if the curve makes loop. After the segmentation the length of a curve can be null. - The segmentation of a periodic curve over an interval corresponding to its period generates a non-periodic curve with equivalent geometry. Exceptions Standard_DomainError if U2 is less than U1. raises if U2 < U1.

	:param U1:
	:type U1: float
	:param U2:
	:type U2: float
	:rtype: None
") Segment;
		void Segment (const Standard_Real U1,const Standard_Real U2);
		%feature("autodoc", "	* Modifies this BSpline curve by assigning the value K to the knot of index Index in the knots table. This is a relatively local modification because K must be such that: Knots(Index - 1) < K < Knots(Index + 1) Exceptions Standard_ConstructionError if: - K is not such that: Knots(Index - 1) < K < Knots(Index + 1) - M is greater than the degree of this BSpline curve or lower than the previous multiplicity of knot of index Index in the knots table. Standard_OutOfRange if Index is outside the bounds of the knots table.

	:param Index:
	:type Index: Standard_Integer
	:param K:
	:type K: float
	:rtype: None
") SetKnot;
		void SetKnot (const Standard_Integer Index,const Standard_Real K);
		%feature("autodoc", "	* Modifies this BSpline curve by assigning the array K to its knots table. The multiplicity of the knots is not modified. Exceptions Standard_ConstructionError if the values in the array K are not in ascending order. Standard_OutOfRange if the bounds of the array K are not respectively 1 and the number of knots of this BSpline curve.

	:param K:
	:type K: TColStd_Array1OfReal &
	:rtype: None
") SetKnots;
		void SetKnots (const TColStd_Array1OfReal & K);
		%feature("autodoc", "	* Modifies this BSpline curve by assigning the value K to the knot of index Index in the knots table. This is a relatively local modification because K must be such that: Knots(Index - 1) < K < Knots(Index + 1) The second syntax allows you also to increase the multiplicity of the knot to M (but it is not possible to decrease the multiplicity of the knot with this function). Exceptions Standard_ConstructionError if: - K is not such that: Knots(Index - 1) < K < Knots(Index + 1) - M is greater than the degree of this BSpline curve or lower than the previous multiplicity of knot of index Index in the knots table. Standard_OutOfRange if Index is outside the bounds of the knots table.

	:param Index:
	:type Index: Standard_Integer
	:param K:
	:type K: float
	:param M:
	:type M: Standard_Integer
	:rtype: None
") SetKnot;
		void SetKnot (const Standard_Integer Index,const Standard_Real K,const Standard_Integer M);
		%feature("autodoc", "	* Computes the parameter normalized within the 'first' period of this BSpline curve, if it is periodic: the returned value is in the range Param1 and Param1 + Period, where: - Param1 is the 'first parameter', and - Period the period of this BSpline curve. Note: If this curve is not periodic, U is not modified.

	:param U:
	:type U: float &
	:rtype: None
") PeriodicNormalization;
		void PeriodicNormalization (Standard_Real &OutValue);
		%feature("autodoc", "	* //!Changes this BSpline curve into a periodic curve. To become periodic, the curve must first be closed. Next, the knot sequence must be periodic. For this, FirstUKnotIndex and LastUKnotIndex are used to compute I1 and I2, the indexes in the knots array of the knots corresponding to the first and last parameters of this BSpline curve. The period is therefore Knot(I2) - Knot(I1). Consequently, the knots and poles tables are modified. Exceptions Standard_ConstructionError if this BSpline curve is not closed.

	:rtype: None
") SetPeriodic;
		void SetPeriodic ();
		%feature("autodoc", "	* Assigns the knot of index Index in the knots table as the origin of this periodic BSpline curve. As a consequence, the knots and poles tables are modified. Exceptions Standard_NoSuchObject if this curve is not periodic. Standard_DomainError if Index is outside the bounds of the knots table.

	:param Index:
	:type Index: Standard_Integer
	:rtype: None
") SetOrigin;
		void SetOrigin (const Standard_Integer Index);
		%feature("autodoc", "	* Changes this BSpline curve into a non-periodic curve. If this curve is already non-periodic, it is not modified. Note that the poles and knots tables are modified. Warning If this curve is periodic, as the multiplicity of the first and last knots is not modified, and is not equal to Degree + 1, where Degree is the degree of this BSpline curve, the start and end points of the curve are not its first and last poles.

	:rtype: None
") SetNotPeriodic;
		void SetNotPeriodic ();
		%feature("autodoc", "	* Modifies this BSpline curve by assigning P to the pole of index Index in the poles table. Exceptions Standard_OutOfRange if Index is outside the bounds of the poles table. Standard_ConstructionError if Weight is negative or null.

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetPole;
		void SetPole (const Standard_Integer Index,const gp_Pnt2d & P);
		%feature("autodoc", "	* Modifies this BSpline curve by assigning P to the pole of index Index in the poles table. The second syntax also allows you to modify the weight of the modified pole, which becomes Weight. In this case, if this BSpline curve is non-rational, it can become rational and vice versa. Exceptions Standard_OutOfRange if Index is outside the bounds of the poles table. Standard_ConstructionError if Weight is negative or null.

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight:
	:type Weight: float
	:rtype: None
") SetPole;
		void SetPole (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight);
		%feature("autodoc", "	* Assigns the weight Weight to the pole of index Index of the poles table. If the curve was non rational it can become rational. If the curve was rational it can become non rational. Exceptions Standard_OutOfRange if Index is outside the bounds of the poles table. Standard_ConstructionError if Weight is negative or null.

	:param Index:
	:type Index: Standard_Integer
	:param Weight:
	:type Weight: float
	:rtype: None
") SetWeight;
		void SetWeight (const Standard_Integer Index,const Standard_Real Weight);
		%feature("autodoc", "	* Moves the point of parameter U of this BSpline curve to P. Index1 and Index2 are the indexes in the table of poles of this BSpline curve of the first and last poles designated to be moved. FirstModifiedPole and LastModifiedPole are the indexes of the first and last poles, which are effectively modified. In the event of incompatibility between Index1, Index2 and the value U: - no change is made to this BSpline curve, and - the FirstModifiedPole and LastModifiedPole are returned null. Exceptions Standard_OutOfRange if: - Index1 is greater than or equal to Index2, or - Index1 or Index2 is less than 1 or greater than the number of poles of this BSpline curve.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param Index1:
	:type Index1: Standard_Integer
	:param Index2:
	:type Index2: Standard_Integer
	:param FirstModifiedPole:
	:type FirstModifiedPole: Standard_Integer &
	:param LastModifiedPole:
	:type LastModifiedPole: Standard_Integer &
	:rtype: None
") MovePoint;
		void MovePoint (const Standard_Real U,const gp_Pnt2d & P,const Standard_Integer Index1,const Standard_Integer Index2,Standard_Integer &OutValue,Standard_Integer &OutValue);
		%feature("autodoc", "	* Move a point with parameter U to P. and makes it tangent at U be Tangent. StartingCondition = -1 means first can move EndingCondition = -1 means last point can move StartingCondition = 0 means the first point cannot move EndingCondition = 0 means the last point cannot move StartingCondition = 1 means the first point and tangent cannot move EndingCondition = 1 means the last point and tangent cannot move and so forth ErrorStatus != 0 means that there are not enought degree of freedom with the constrain to deform the curve accordingly

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param Tangent:
	:type Tangent: gp_Vec2d
	:param Tolerance:
	:type Tolerance: float
	:param StartingCondition:
	:type StartingCondition: Standard_Integer
	:param EndingCondition:
	:type EndingCondition: Standard_Integer
	:param ErrorStatus:
	:type ErrorStatus: Standard_Integer &
	:rtype: None
") MovePointAndTangent;
		void MovePointAndTangent (const Standard_Real U,const gp_Pnt2d & P,const gp_Vec2d & Tangent,const Standard_Real Tolerance,const Standard_Integer StartingCondition,const Standard_Integer EndingCondition,Standard_Integer &OutValue);
		%feature("autodoc", "	* Returns true if the degree of continuity of this BSpline curve is at least N. A BSpline curve is at least GeomAbs_C0. Exceptions Standard_RangeError if N is negative.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Returns true if the distance between the first point and the last point of the curve is lower or equal to Resolution from package gp. Warnings : The first and the last point can be different from the first pole and the last pole of the curve.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Returns True if the curve is periodic.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns True if the weights are not identical. The tolerance criterion is Epsilon of the class Real.

	:rtype: bool
") IsRational;
		Standard_Boolean IsRational ();
		%feature("autodoc", "	* Returns the global continuity of the curve : C0 : only geometric continuity, C1 : continuity of the first derivative all along the Curve, C2 : continuity of the second derivative all along the Curve, C3 : continuity of the third derivative all along the Curve, CN : the order of continuity is infinite. For a B-spline curve of degree d if a knot Ui has a multiplicity p the B-spline curve is only Cd-p continuous at Ui. So the global continuity of the curve can't be greater than Cd-p where p is the maximum multiplicity of the interior Knots. In the interior of a knot span the curve is infinitely continuously differentiable.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Returns the degree of this BSpline curve. In this class the degree of the basis normalized B-spline functions cannot be greater than 'MaxDegree' Computation of value and derivatives

	:rtype: int
") Degree;
		Standard_Integer Degree ();
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Raised if the continuity of the curve is not C1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Raised if the continuity of the curve is not C2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* For this BSpline curve, computes - the point P of parameter U, or - the point P and one or more of the following values: - V1, the first derivative vector, - V2, the second derivative vector, - V3, the third derivative vector. Warning On a point where the continuity of the curve is not the one requested, these functions impact the part defined by the parameter with a value greater than U, i.e. the part of the curve to the 'right' of the singularity. Raises UndefinedDerivative if the continuity of the curve is not C3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this BSpline curve, computes the vector corresponding to the Nth derivative. Warning On a point where the continuity of the curve is not the one requested, this function impacts the part defined by the parameter with a value greater than U, i.e. the part of the curve to the 'right' of the singularity. Raises UndefinedDerivative if the continuity of the curve is not CN. RangeError if N < 1. The following functions computes the point of parameter U and the derivatives at this point on the B-spline curve arc defined between the knot FromK1 and the knot ToK2. U can be out of bounds [Knot (FromK1), Knot (ToK2)] but for the computation we only use the definition of the curve between these two knots. This method is useful to compute local derivative, if the order of continuity of the whole curve is not greater enough. Inside the parametric domain Knot (FromK1), Knot (ToK2) the evaluations are the same as if we consider the whole definition of the curve. Of course the evaluations are different outside this parametric domain.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Raised if FromK1 = ToK2. Raised if FromK1 and ToK2 are not in the range [FirstUKnotIndex, LastUKnotIndex].

	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:rtype: gp_Pnt2d
") LocalValue;
		gp_Pnt2d LocalValue (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2);
		%feature("autodoc", "	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") LocalD0;
		void LocalD0 (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt2d & P);
		%feature("autodoc", "	* Raised if the local continuity of the curve is not C1 between the knot K1 and the knot K2. Raised if FromK1 = ToK2. Raised if FromK1 and ToK2 are not in the range [FirstUKnotIndex, LastUKnotIndex].

	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") LocalD1;
		void LocalD1 (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Raised if the local continuity of the curve is not C2 between the knot K1 and the knot K2. Raised if FromK1 = ToK2. Raised if FromK1 and ToK2 are not in the range [FirstUKnotIndex, LastUKnotIndex].

	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") LocalD2;
		void LocalD2 (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Raised if the local continuity of the curve is not C3 between the knot K1 and the knot K2. Raised if FromK1 = ToK2. Raised if FromK1 and ToK2 are not in the range [FirstUKnotIndex, LastUKnotIndex].

	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") LocalD3;
		void LocalD3 (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* Raised if the local continuity of the curve is not CN between the knot K1 and the knot K2. Raised if FromK1 = ToK2. Raised if N < 1. Raises if FromK1 and ToK2 are not in the range [FirstUKnotIndex, LastUKnotIndex].

	:param U:
	:type U: float
	:param FromK1:
	:type FromK1: Standard_Integer
	:param ToK2:
	:type ToK2: Standard_Integer
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") LocalDN;
		gp_Vec2d LocalDN (const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,const Standard_Integer N);
		%feature("autodoc", "	* Returns the last point of the curve. Warnings : The last point of the curve is different from the last pole of the curve if the multiplicity of the last knot is lower than Degree.

	:rtype: gp_Pnt2d
") EndPoint;
		gp_Pnt2d EndPoint ();
		%feature("autodoc", "	* For a B-spline curve the first parameter (which gives the start point of the curve) is a knot value but if the multiplicity of the first knot index is lower than Degree + 1 it is not the first knot of the curve. This method computes the index of the knot corresponding to the first parameter.

	:rtype: int
") FirstUKnotIndex;
		Standard_Integer FirstUKnotIndex ();
		%feature("autodoc", "	* Computes the parametric value of the start point of the curve. It is a knot value.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns the knot of range Index. When there is a knot with a multiplicity greater than 1 the knot is not repeated. The method Multiplicity can be used to get the multiplicity of the Knot. Raised if Index < 1 or Index > NbKnots

	:param Index:
	:type Index: Standard_Integer
	:rtype: float
") Knot;
		Standard_Real Knot (const Standard_Integer Index);
		%feature("autodoc", "	* returns the knot values of the B-spline curve; Raised if the length of K is not equal to the number of knots.

	:param K:
	:type K: TColStd_Array1OfReal &
	:rtype: None
") Knots;
		void Knots (TColStd_Array1OfReal & K);
		%feature("autodoc", "	* Returns the knots sequence. In this sequence the knots with a multiplicity greater than 1 are repeated. Example : K = {k1, k1, k1, k2, k3, k3, k4, k4, k4} Raised if the length of K is not equal to NbPoles + Degree + 1

	:param K:
	:type K: TColStd_Array1OfReal &
	:rtype: None
") KnotSequence;
		void KnotSequence (TColStd_Array1OfReal & K);
		%feature("autodoc", "	* Returns NonUniform or Uniform or QuasiUniform or PiecewiseBezier. If all the knots differ by a positive constant from the preceding knot the BSpline Curve can be : - Uniform if all the knots are of multiplicity 1, - QuasiUniform if all the knots are of multiplicity 1 except for the first and last knot which are of multiplicity Degree + 1, - PiecewiseBezier if the first and last knots have multiplicity Degree + 1 and if interior knots have multiplicity Degree A piecewise Bezier with only two knots is a BezierCurve. else the curve is non uniform. The tolerance criterion is Epsilon from class Real.

	:rtype: GeomAbs_BSplKnotDistribution
") KnotDistribution;
		GeomAbs_BSplKnotDistribution KnotDistribution ();
		%feature("autodoc", "	* For a BSpline curve the last parameter (which gives the end point of the curve) is a knot value but if the multiplicity of the last knot index is lower than Degree + 1 it is not the last knot of the curve. This method computes the index of the knot corresponding to the last parameter.

	:rtype: int
") LastUKnotIndex;
		Standard_Integer LastUKnotIndex ();
		%feature("autodoc", "	* Computes the parametric value of the end point of the curve. It is a knot value.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Locates the parametric value U in the sequence of knots. If 'WithKnotRepetition' is True we consider the knot's representation with repetition of multiple knot value, otherwise we consider the knot's representation with no repetition of multiple knot values. Knots (I1) <= U <= Knots (I2) . if I1 = I2 U is a knot value (the tolerance criterion ParametricTolerance is used). . if I1 < 1 => U < Knots (1) - Abs(ParametricTolerance) . if I2 > NbKnots => U > Knots (NbKnots) + Abs(ParametricTolerance)

	:param U:
	:type U: float
	:param ParametricTolerance:
	:type ParametricTolerance: float
	:param I1:
	:type I1: Standard_Integer &
	:param I2:
	:type I2: Standard_Integer &
	:param WithKnotRepetition: default value is Standard_False
	:type WithKnotRepetition: bool
	:rtype: None
") LocateU;
		void LocateU (const Standard_Real U,const Standard_Real ParametricTolerance,Standard_Integer &OutValue,Standard_Integer &OutValue,const Standard_Boolean WithKnotRepetition = Standard_False);
		%feature("autodoc", "	* Returns the multiplicity of the knots of range Index. Raised if Index < 1 or Index > NbKnots

	:param Index:
	:type Index: Standard_Integer
	:rtype: int
") Multiplicity;
		Standard_Integer Multiplicity (const Standard_Integer Index);
		%feature("autodoc", "	* Returns the multiplicity of the knots of the curve. Raised if the length of M is not equal to NbKnots.

	:param M:
	:type M: TColStd_Array1OfInteger &
	:rtype: None
") Multiplicities;
		void Multiplicities (TColStd_Array1OfInteger & M);
		%feature("autodoc", "	* Returns the number of knots. This method returns the number of knot without repetition of multiple knots.

	:rtype: int
") NbKnots;
		Standard_Integer NbKnots ();
		%feature("autodoc", "	* Returns the number of poles

	:rtype: int
") NbPoles;
		Standard_Integer NbPoles ();
		%feature("autodoc", "	* Returns the pole of range Index. Raised if Index < 1 or Index > NbPoles.

	:param Index:
	:type Index: Standard_Integer
	:rtype: gp_Pnt2d
") Pole;
		gp_Pnt2d Pole (const Standard_Integer Index);
		%feature("autodoc", "	* Returns the poles of the B-spline curve; Raised if the length of P is not equal to the number of poles.

	:param P:
	:type P: TColgp_Array1OfPnt2d
	:rtype: None
") Poles;
		void Poles (TColgp_Array1OfPnt2d & P);
		%feature("autodoc", "	* Returns the start point of the curve. Warnings : This point is different from the first pole of the curve if the multiplicity of the first knot is lower than Degree.

	:rtype: gp_Pnt2d
") StartPoint;
		gp_Pnt2d StartPoint ();
		%feature("autodoc", "	* Returns the weight of the pole of range Index . Raised if Index < 1 or Index > NbPoles.

	:param Index:
	:type Index: Standard_Integer
	:rtype: float
") Weight;
		Standard_Real Weight (const Standard_Integer Index);
		%feature("autodoc", "	* Returns the weights of the B-spline curve; Raised if the length of W is not equal to NbPoles.

	:param W:
	:type W: TColStd_Array1OfReal &
	:rtype: None
") Weights;
		void Weights (TColStd_Array1OfReal & W);
		%feature("autodoc", "	* Applies the transformation T to this BSpline curve.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the value of the maximum degree of the normalized B-spline basis functions in this package.

	:rtype: int
") MaxDegree;
		static Standard_Integer MaxDegree ();
		%feature("autodoc", "	* Computes for this BSpline curve the parametric tolerance UTolerance for a given tolerance Tolerance3D (relative to dimensions in the plane). If f(t) is the equation of this BSpline curve, UTolerance ensures that: | t1 - t0| < Utolerance ===> |f(t1) - f(t0)| < ToleranceUV

	:param ToleranceUV:
	:type ToleranceUV: float
	:param UTolerance:
	:type UTolerance: float &
	:rtype: None
") Resolution;
		void Resolution (const Standard_Real ToleranceUV,Standard_Real &OutValue);
		%feature("autodoc", "	* Creates a new object which is a copy of this BSpline curve.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_BSplineCurve::~Geom2d_BSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_BSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_BSplineCurve {
	Handle_Geom2d_BSplineCurve GetHandle() {
	return *(Handle_Geom2d_BSplineCurve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_BSplineCurve;
class Handle_Geom2d_BSplineCurve : public Handle_Geom2d_BoundedCurve {

    public:
        // constructors
        Handle_Geom2d_BSplineCurve();
        Handle_Geom2d_BSplineCurve(const Handle_Geom2d_BSplineCurve &aHandle);
        Handle_Geom2d_BSplineCurve(const Geom2d_BSplineCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_BSplineCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BSplineCurve {
    Geom2d_BSplineCurve* GetObject() {
    return (Geom2d_BSplineCurve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_BSplineCurve::~Handle_Geom2d_BSplineCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_BSplineCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_BezierCurve;
class Geom2d_BezierCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "	* Creates a non rational Bezier curve with a set of poles : CurvePoles. The weights are defaulted to all being 1. Raises ConstructionError if the number of poles is greater than MaxDegree + 1 or lower than 2.

	:param CurvePoles:
	:type CurvePoles: TColgp_Array1OfPnt2d
	:rtype: None
") Geom2d_BezierCurve;
		 Geom2d_BezierCurve (const TColgp_Array1OfPnt2d & CurvePoles);
		%feature("autodoc", "	* Creates a rational Bezier curve with the set of poles CurvePoles and the set of weights PoleWeights . If all the weights are identical the curve is considered as non rational. Raises ConstructionError if the number of poles is greater than MaxDegree + 1 or lower than 2 or CurvePoles and CurveWeights have not the same length or one weight value is lower or equal to Resolution from package gp.

	:param CurvePoles:
	:type CurvePoles: TColgp_Array1OfPnt2d
	:param PoleWeights:
	:type PoleWeights: TColStd_Array1OfReal &
	:rtype: None
") Geom2d_BezierCurve;
		 Geom2d_BezierCurve (const TColgp_Array1OfPnt2d & CurvePoles,const TColStd_Array1OfReal & PoleWeights);
		%feature("autodoc", "	* Increases the degree of a bezier curve. Degree is the new degree of <self>. raises ConstructionError if Degree is greater than MaxDegree or lower than 2 or lower than the initial degree of <self>.

	:param Degree:
	:type Degree: Standard_Integer
	:rtype: None
") Increase;
		void Increase (const Standard_Integer Degree);
		%feature("autodoc", "	* Inserts a pole with its weight in the set of poles after the pole of range Index. If the curve was non rational it can become rational if all the weights are not identical. Raised if Index is not in the range [0, NbPoles] Raised if the resulting number of poles is greater than MaxDegree + 1.

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight: default value is 1.0
	:type Weight: float
	:rtype: None
") InsertPoleAfter;
		void InsertPoleAfter (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight = 1.0);
		%feature("autodoc", "	* Inserts a pole with its weight in the set of poles after the pole of range Index. If the curve was non rational it can become rational if all the weights are not identical. Raised if Index is not in the range [1, NbPoles+1] Raised if the resulting number of poles is greater than MaxDegree + 1.

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight: default value is 1.0
	:type Weight: float
	:rtype: None
") InsertPoleBefore;
		void InsertPoleBefore (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight = 1.0);
		%feature("autodoc", "	* Removes the pole of range Index. If the curve was rational it can become non rational. Raised if Index is not in the range [1, NbPoles]

	:param Index:
	:type Index: Standard_Integer
	:rtype: None
") RemovePole;
		void RemovePole (const Standard_Integer Index);
		%feature("autodoc", "	* Reverses the direction of parametrization of <self> Value (NewU) = Value (1 - OldU)

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Returns the parameter on the reversed curve for the point of parameter U on <self>.  returns 1-U

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Segments the curve between U1 and U2 which can be out of the bounds of the curve. The curve is oriented from U1 to U2. The control points are modified, the first and the last point are not the same but the parametrization range is [0, 1] else it could not be a Bezier curve. Warnings : Even if <self> is not closed it can become closed after the segmentation for example if U1 or U2 are out of the bounds of the curve <self> or if the curve makes loop. After the segmentation the length of a curve can be null.

	:param U1:
	:type U1: float
	:param U2:
	:type U2: float
	:rtype: None
") Segment;
		void Segment (const Standard_Real U1,const Standard_Real U2);
		%feature("autodoc", "	* Substitutes the pole of range index with P. If the curve <self> is rational the weight of range Index is not modified. raiseD if Index is not in the range [1, NbPoles]

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") SetPole;
		void SetPole (const Standard_Integer Index,const gp_Pnt2d & P);
		%feature("autodoc", "	* Substitutes the pole and the weights of range Index. If the curve <self> is not rational it can become rational if all the weights are not identical. If the curve was rational it can become non rational if all the weights are identical. Raised if Index is not in the range [1, NbPoles] Raised if Weight <= Resolution from package gp

	:param Index:
	:type Index: Standard_Integer
	:param P:
	:type P: gp_Pnt2d
	:param Weight:
	:type Weight: float
	:rtype: None
") SetPole;
		void SetPole (const Standard_Integer Index,const gp_Pnt2d & P,const Standard_Real Weight);
		%feature("autodoc", "	* Changes the weight of the pole of range Index. If the curve <self> is not rational it can become rational if all the weights are not identical. If the curve was rational it can become non rational if all the weights are identical. Raised if Index is not in the range [1, NbPoles] Raised if Weight <= Resolution from package gp

	:param Index:
	:type Index: Standard_Integer
	:param Weight:
	:type Weight: float
	:rtype: None
") SetWeight;
		void SetWeight (const Standard_Integer Index,const Standard_Real Weight);
		%feature("autodoc", "	* Returns True if the distance between the first point and the last point of the curve is lower or equal to the Resolution from package gp.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Continuity of the curve, returns True.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Returns False. A BezierCurve cannot be periodic in this package

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns false if all the weights are identical. The tolerance criterion is Resolution from package gp.

	:rtype: bool
") IsRational;
		Standard_Boolean IsRational ();
		%feature("autodoc", "	* Returns GeomAbs_CN, which is the continuity of any Bezier curve.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* Returns the polynomial degree of the curve. It is the number of poles less one. In this package the Degree of a Bezier curve cannot be greater than 'MaxDegree'.

	:rtype: int
") Degree;
		Standard_Integer Degree ();
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For this Bezier curve, computes - the point P of parameter U, or - the point P and one or more of the following values: - V1, the first derivative vector, - V2, the second derivative vector, - V3, the third derivative vector. Note: the parameter U can be outside the bounds of the curve. Raises RangeError if N < 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Returns the end point or start point of this Bezier curve.

	:rtype: gp_Pnt2d
") EndPoint;
		gp_Pnt2d EndPoint ();
		%feature("autodoc", "	* Returns the value of the first parameter of this Bezier curve. This is 0.0, which gives the start point of this Bezier curve.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns the value of the last parameter of this Bezier curve. This is 1.0, which gives the end point of this Bezier curve.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns the number of poles for this Bezier curve.

	:rtype: int
") NbPoles;
		Standard_Integer NbPoles ();
		%feature("autodoc", "	* Returns the pole of range Index. Raised if Index is not in the range [1, NbPoles]

	:param Index:
	:type Index: Standard_Integer
	:rtype: gp_Pnt2d
") Pole;
		gp_Pnt2d Pole (const Standard_Integer Index);
		%feature("autodoc", "	* Returns all the poles of the curve. Raised if the length of P is not equal to the number of poles.

	:param P:
	:type P: TColgp_Array1OfPnt2d
	:rtype: None
") Poles;
		void Poles (TColgp_Array1OfPnt2d & P);
		%feature("autodoc", "	* Returns Value (U=1), it is the first control point of the curve.

	:rtype: gp_Pnt2d
") StartPoint;
		gp_Pnt2d StartPoint ();
		%feature("autodoc", "	* Returns the weight of range Index. Raised if Index is not in the range [1, NbPoles]

	:param Index:
	:type Index: Standard_Integer
	:rtype: float
") Weight;
		Standard_Real Weight (const Standard_Integer Index);
		%feature("autodoc", "	* Returns all the weights of the curve. Raised if the length of W is not equal to the number of poles.

	:param W:
	:type W: TColStd_Array1OfReal &
	:rtype: None
") Weights;
		void Weights (TColStd_Array1OfReal & W);
		%feature("autodoc", "	* Applies the transformation T to this Bezier curve.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the value of the maximum polynomial degree of a BezierCurve. This value is 25.

	:rtype: int
") MaxDegree;
		static Standard_Integer MaxDegree ();
		%feature("autodoc", "	* Computes for this Bezier curve the parametric tolerance UTolerance for a given tolerance Tolerance3D (relative to dimensions in the plane). If f(t) is the equation of this Bezier curve, UTolerance ensures that | t1 - t0| < Utolerance ===> |f(t1) - f(t0)| < ToleranceUV

	:param ToleranceUV:
	:type ToleranceUV: float
	:param UTolerance:
	:type UTolerance: float &
	:rtype: None
") Resolution;
		void Resolution (const Standard_Real ToleranceUV,Standard_Real &OutValue);
		%feature("autodoc", "	* Creates a new object which is a copy of this Bezier curve.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_BezierCurve::~Geom2d_BezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_BezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_BezierCurve {
	Handle_Geom2d_BezierCurve GetHandle() {
	return *(Handle_Geom2d_BezierCurve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_BezierCurve;
class Handle_Geom2d_BezierCurve : public Handle_Geom2d_BoundedCurve {

    public:
        // constructors
        Handle_Geom2d_BezierCurve();
        Handle_Geom2d_BezierCurve(const Handle_Geom2d_BezierCurve &aHandle);
        Handle_Geom2d_BezierCurve(const Geom2d_BezierCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_BezierCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_BezierCurve {
    Geom2d_BezierCurve* GetObject() {
    return (Geom2d_BezierCurve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_BezierCurve::~Handle_Geom2d_BezierCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_BezierCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Circle;
class Geom2d_Circle : public Geom2d_Conic {
	public:
		%feature("autodoc", "	* Constructs a circle by conversion of the gp_Circ2d circle C.

	:param C:
	:type C: gp_Circ2d
	:rtype: None
") Geom2d_Circle;
		 Geom2d_Circle (const gp_Circ2d & C);
		%feature("autodoc", "	* Constructs a circle of radius Radius, whose center is the origin of axis A; A is the 'X Axis' of the local coordinate system of the circle; this coordinate system is direct if Sense is true (default value) or indirect if Sense is false. Note: It is possible to create a circle where Radius is equal to 0.0. Exceptions Standard_ConstructionError if Radius is negative.

	:param A:
	:type A: gp_Ax2d
	:param Radius:
	:type Radius: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") Geom2d_Circle;
		 Geom2d_Circle (const gp_Ax2d & A,const Standard_Real Radius,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* Constructs a circle of radius Radius, where the coordinate system A locates the circle and defines its orientation in the plane such that: - the center of the circle is the origin of A, - the orientation (direct or indirect) of A gives the orientation of the circle.

	:param A:
	:type A: gp_Ax22d
	:param Radius:
	:type Radius: float
	:rtype: None
") Geom2d_Circle;
		 Geom2d_Circle (const gp_Ax22d & A,const Standard_Real Radius);
		%feature("autodoc", "	* Converts the gp_Circ2d circle C into this circle.

	:param C:
	:type C: gp_Circ2d
	:rtype: None
") SetCirc2d;
		void SetCirc2d (const gp_Circ2d & C);
		%feature("autodoc", "	:param R:
	:type R: float
	:rtype: None
") SetRadius;
		void SetRadius (const Standard_Real R);
		%feature("autodoc", "	* Returns the non persistent circle from gp with the same geometric properties as <self>.

	:rtype: gp_Circ2d
") Circ2d;
		gp_Circ2d Circ2d ();
		%feature("autodoc", "	* Returns the radius of this circle.

	:rtype: float
") Radius;
		Standard_Real Radius ();
		%feature("autodoc", "	* Computes the parameter on the reversed circle for the point of parameter U on this circle. For a circle, the returned value is: 2.*Pi - U.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Returns 0., which is the eccentricity of any circle.

	:rtype: float
") Eccentricity;
		Standard_Real Eccentricity ();
		%feature("autodoc", "	* Returns 0.0

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns 2*PI.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* returns True.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* returns True. The period of a circle is 2.*Pi.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns in P the point of parameter U. P = C + R * Cos (U) * XDir + R * Sin (U) * YDir where C is the center of the circle , XDir the XDirection and YDir the YDirection of the circle's local coordinate system.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the point P of parameter U and the first derivative V1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U, the first and second derivatives V1 and V2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Returns the point P of parameter u, the first second and third derivatives V1 V2 and V3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this circle, computes the vector corresponding to the Nth derivative. Exceptions: Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this circle.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this circle.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Circle::~Geom2d_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Circle {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Circle {
	Handle_Geom2d_Circle GetHandle() {
	return *(Handle_Geom2d_Circle*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Circle;
class Handle_Geom2d_Circle : public Handle_Geom2d_Conic {

    public:
        // constructors
        Handle_Geom2d_Circle();
        Handle_Geom2d_Circle(const Handle_Geom2d_Circle &aHandle);
        Handle_Geom2d_Circle(const Geom2d_Circle *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Circle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Circle {
    Geom2d_Circle* GetObject() {
    return (Geom2d_Circle*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Circle::~Handle_Geom2d_Circle %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Circle {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Ellipse;
class Geom2d_Ellipse : public Geom2d_Conic {
	public:
		%feature("autodoc", "	* Creates an ellipse by conversion of the gp_Elips2d ellipse E.

	:param E:
	:type E: gp_Elips2d
	:rtype: None
") Geom2d_Ellipse;
		 Geom2d_Ellipse (const gp_Elips2d & E);
		%feature("autodoc", "	* Creates an ellipse defined by its major and minor radii, MajorRadius and MinorRadius, and positioned in the plane by its major axis MajorAxis; the center of the ellipse is the origin of MajorAxis and the unit vector of MajorAxis is the 'X Direction' of the local coordinate system of the ellipse; this coordinate system is direct if Sense is true (default value) or indirect if Sense is false. Warnings : It is not forbidden to create an ellipse with MajorRadius = MinorRadius. Exceptions Standard_ConstructionError if: - MajorRadius is less than MinorRadius, or - MinorRadius is less than 0.

	:param MajorAxis:
	:type MajorAxis: gp_Ax2d
	:param MajorRadius:
	:type MajorRadius: float
	:param MinorRadius:
	:type MinorRadius: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") Geom2d_Ellipse;
		 Geom2d_Ellipse (const gp_Ax2d & MajorAxis,const Standard_Real MajorRadius,const Standard_Real MinorRadius,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* Creates an ellipse defined by its major and minor radii, MajorRadius and MinorRadius, where the coordinate system Axis locates the ellipse and defines its orientation in the plane such that: - the center of the ellipse is the origin of Axis, - the 'X Direction' of Axis defines the major axis of the ellipse, - the 'Y Direction' of Axis defines the minor axis of the ellipse, - the orientation of Axis (direct or indirect) gives the orientation of the ellipse. Warnings : It is not forbidden to create an ellipse with MajorRadius = MinorRadius. Exceptions Standard_ConstructionError if: - MajorRadius is less than MinorRadius, or - MinorRadius is less than 0.

	:param Axis:
	:type Axis: gp_Ax22d
	:param MajorRadius:
	:type MajorRadius: float
	:param MinorRadius:
	:type MinorRadius: float
	:rtype: None
") Geom2d_Ellipse;
		 Geom2d_Ellipse (const gp_Ax22d & Axis,const Standard_Real MajorRadius,const Standard_Real MinorRadius);
		%feature("autodoc", "	* Converts the gp_Elips2d ellipse E into this ellipse.

	:param E:
	:type E: gp_Elips2d
	:rtype: None
") SetElips2d;
		void SetElips2d (const gp_Elips2d & E);
		%feature("autodoc", "	* Assigns a value to the major radius of this ellipse. Exceptions Standard_ConstructionError if: - the major radius of this ellipse becomes less than the minor radius, or - MinorRadius is less than 0.

	:param MajorRadius:
	:type MajorRadius: float
	:rtype: None
") SetMajorRadius;
		void SetMajorRadius (const Standard_Real MajorRadius);
		%feature("autodoc", "	* Assigns a value to the minor radius of this ellipse. Exceptions Standard_ConstructionError if: - the major radius of this ellipse becomes less than the minor radius, or - MinorRadius is less than 0.

	:param MinorRadius:
	:type MinorRadius: float
	:rtype: None
") SetMinorRadius;
		void SetMinorRadius (const Standard_Real MinorRadius);
		%feature("autodoc", "	* Converts this ellipse into a gp_Elips2d ellipse.

	:rtype: gp_Elips2d
") Elips2d;
		gp_Elips2d Elips2d ();
		%feature("autodoc", "	* Computes the parameter on the reversed ellipse for the point of parameter U on this ellipse. For an ellipse, the returned value is: 2.*Pi - U.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Computes the directrices of this ellipse. This directrix is the line normal to the XAxis of the ellipse in the local plane (Z = 0) at a distance d = MajorRadius / e from the center of the ellipse, where e is the eccentricity of the ellipse. This line is parallel to the 'YAxis'. The intersection point between directrix1 and the 'XAxis' is the 'Location' point of the directrix1. This point is on the positive side of the 'XAxis'. Raises ConstructionError if Eccentricity = 0.0. (The ellipse degenerates into a circle)

	:rtype: gp_Ax2d
") Directrix1;
		gp_Ax2d Directrix1 ();
		%feature("autodoc", "	* This line is obtained by the symmetrical transformation of 'Directrix1' with respect to the 'YAxis' of the ellipse. Raises ConstructionError if Eccentricity = 0.0. (The ellipse degenerates into a circle).

	:rtype: gp_Ax2d
") Directrix2;
		gp_Ax2d Directrix2 ();
		%feature("autodoc", "	* Returns the eccentricity of the ellipse between 0.0 and 1.0 If f is the distance between the center of the ellipse and the Focus1 then the eccentricity e = f / MajorRadius. Returns 0 if MajorRadius = 0

	:rtype: float
") Eccentricity;
		Standard_Real Eccentricity ();
		%feature("autodoc", "	* Computes the focal distance. The focal distance is the distance between the center and a focus of the ellipse.

	:rtype: float
") Focal;
		Standard_Real Focal ();
		%feature("autodoc", "	* Returns the first focus of the ellipse. This focus is on the positive side of the 'XAxis' of the ellipse.

	:rtype: gp_Pnt2d
") Focus1;
		gp_Pnt2d Focus1 ();
		%feature("autodoc", "	* Returns the second focus of the ellipse. This focus is on the negative side of the 'XAxis' of the ellipse.

	:rtype: gp_Pnt2d
") Focus2;
		gp_Pnt2d Focus2 ();
		%feature("autodoc", "	* Returns the major radius of this ellipse.

	:rtype: float
") MajorRadius;
		Standard_Real MajorRadius ();
		%feature("autodoc", "	* Returns the minor radius of this ellipse.

	:rtype: float
") MinorRadius;
		Standard_Real MinorRadius ();
		%feature("autodoc", "	* Computes the parameter of this ellipse. This value is given by the formula p = (1 - e * e) * MajorRadius where e is the eccentricity of the ellipse. Returns 0 if MajorRadius = 0

	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("autodoc", "	* Returns the value of the first parameter of this ellipse. This is 0.0, which gives the start point of this ellipse. The start point and end point of an ellipse are coincident.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns the value of the last parameter of this ellipse. This is 2.*Pi, which gives the end point of this ellipse. The start point and end point of an ellipse are coincident.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* return True.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* return True.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns in P the point of parameter U. P = C + MajorRadius * Cos (U) * XDir + MinorRadius * Sin (U) * YDir where C is the center of the ellipse , XDir the direction of the 'XAxis' and 'YDir' the 'YAxis' of the ellipse.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U. The vectors V1 and V2 are the first and second derivatives at this point.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Returns the point P of parameter U, the first second and third derivatives V1 V2 and V3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this ellipse, computes the vector corresponding to the Nth derivative. Exceptions Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this ellipse.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this ellipse.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Ellipse::~Geom2d_Ellipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Ellipse {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Ellipse {
	Handle_Geom2d_Ellipse GetHandle() {
	return *(Handle_Geom2d_Ellipse*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Ellipse;
class Handle_Geom2d_Ellipse : public Handle_Geom2d_Conic {

    public:
        // constructors
        Handle_Geom2d_Ellipse();
        Handle_Geom2d_Ellipse(const Handle_Geom2d_Ellipse &aHandle);
        Handle_Geom2d_Ellipse(const Geom2d_Ellipse *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Ellipse DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Ellipse {
    Geom2d_Ellipse* GetObject() {
    return (Geom2d_Ellipse*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Ellipse::~Handle_Geom2d_Ellipse %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Ellipse {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Hyperbola;
class Geom2d_Hyperbola : public Geom2d_Conic {
	public:
		%feature("autodoc", "	* Creates an Hyperbola from a non persistent one from package gp

	:param H:
	:type H: gp_Hypr2d
	:rtype: None
") Geom2d_Hyperbola;
		 Geom2d_Hyperbola (const gp_Hypr2d & H);
		%feature("autodoc", "	* MajorAxis is the 'XAxis' of the hyperbola. The YAxis is in the direct sense if 'Sense' is True; The major radius of the hyperbola is on this 'XAxis' and the minor radius is on the 'YAxis' of the hyperbola. Raised if MajorRadius < 0.0 or if MinorRadius < 0.0

	:param MajorAxis:
	:type MajorAxis: gp_Ax2d
	:param MajorRadius:
	:type MajorRadius: float
	:param MinorRadius:
	:type MinorRadius: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") Geom2d_Hyperbola;
		 Geom2d_Hyperbola (const gp_Ax2d & MajorAxis,const Standard_Real MajorRadius,const Standard_Real MinorRadius,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* The XDirection of 'Axis' is the 'XAxis' of the hyperbola and the YDirection of 'Axis' is the 'YAxis'. The major radius of the hyperbola is on this 'XAxis' and the minor radius is on the 'YAxis' of the hyperbola. Raised if MajorRadius < 0.0 or if MinorRadius < 0.0

	:param Axis:
	:type Axis: gp_Ax22d
	:param MajorRadius:
	:type MajorRadius: float
	:param MinorRadius:
	:type MinorRadius: float
	:rtype: None
") Geom2d_Hyperbola;
		 Geom2d_Hyperbola (const gp_Ax22d & Axis,const Standard_Real MajorRadius,const Standard_Real MinorRadius);
		%feature("autodoc", "	* Converts the gp_Hypr2d hyperbola H into this hyperbola.

	:param H:
	:type H: gp_Hypr2d
	:rtype: None
") SetHypr2d;
		void SetHypr2d (const gp_Hypr2d & H);
		%feature("autodoc", "	* Assigns a value to the major or minor radius of this hyperbola. Exceptions Standard_ConstructionError if: - MajorRadius is less than 0.0, - MinorRadius is less than 0.0.

	:param MajorRadius:
	:type MajorRadius: float
	:rtype: None
") SetMajorRadius;
		void SetMajorRadius (const Standard_Real MajorRadius);
		%feature("autodoc", "	* Assigns a value to the major or minor radius of this hyperbola. Exceptions Standard_ConstructionError if: - MajorRadius is less than 0.0, - MinorRadius is less than 0.0.

	:param MinorRadius:
	:type MinorRadius: float
	:rtype: None
") SetMinorRadius;
		void SetMinorRadius (const Standard_Real MinorRadius);
		%feature("autodoc", "	* Converts this hyperbola into a gp_Hypr2d one.

	:rtype: gp_Hypr2d
") Hypr2d;
		gp_Hypr2d Hypr2d ();
		%feature("autodoc", "	* Computes the parameter on the reversed hyperbola, for the point of parameter U on this hyperbola. For a hyperbola, the returned value is -U.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Returns RealFirst from Standard.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* returns RealLast from Standard.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns False.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* return False for an hyperbola.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* In the local coordinate system of the hyperbola the equation of the hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the first asymptote is Y = (B/A)*X where A is the major radius of the hyperbola and B is the minor radius of the hyperbola. Raised if MajorRadius = 0.0

	:rtype: gp_Ax2d
") Asymptote1;
		gp_Ax2d Asymptote1 ();
		%feature("autodoc", "	* In the local coordinate system of the hyperbola the equation of the hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the first asymptote is Y = -(B/A)*X. where A is the major radius of the hyperbola and B is the minor radius of the hyperbola. raised if MajorRadius = 0.0

	:rtype: gp_Ax2d
") Asymptote2;
		gp_Ax2d Asymptote2 ();
		%feature("autodoc", "	* Computes the first conjugate branch relative to this hyperbola. Note: The diagram given under the class purpose indicates where these two branches of hyperbola are positioned in relation to this branch of hyperbola.

	:rtype: gp_Hypr2d
") ConjugateBranch1;
		gp_Hypr2d ConjugateBranch1 ();
		%feature("autodoc", "	* Computes the second conjugate branch relative to this hyperbola. Note: The diagram given under the class purpose indicates where these two branches of hyperbola are positioned in relation to this branch of hyperbola.

	:rtype: gp_Hypr2d
") ConjugateBranch2;
		gp_Hypr2d ConjugateBranch2 ();
		%feature("autodoc", "	* This directrix is the line normal to the XAxis of the hyperbola in the local plane (Z = 0) at a distance d = MajorRadius / e from the center of the hyperbola, where e is the eccentricity of the hyperbola. This line is parallel to the 'YAxis'. The intersection point between directrix1 and the 'XAxis' is the location point of the directrix1. This point is on the positive side of the 'XAxis'.

	:rtype: gp_Ax2d
") Directrix1;
		gp_Ax2d Directrix1 ();
		%feature("autodoc", "	* This line is obtained by the symmetrical transformation of 'Directrix1' with respect to the 'YAxis' of the hyperbola.

	:rtype: gp_Ax2d
") Directrix2;
		gp_Ax2d Directrix2 ();
		%feature("autodoc", "	* Returns the excentricity of the hyperbola (e > 1). If f is the distance between the location of the hyperbola and the Focus1 then the eccentricity e = f / MajorRadius. raised if MajorRadius = 0.0

	:rtype: float
") Eccentricity;
		Standard_Real Eccentricity ();
		%feature("autodoc", "	* Computes the focal distance. It is the distance between the two focus of the hyperbola.

	:rtype: float
") Focal;
		Standard_Real Focal ();
		%feature("autodoc", "	* Returns the first focus of the hyperbola. This focus is on the positive side of the 'XAxis' of the hyperbola.

	:rtype: gp_Pnt2d
") Focus1;
		gp_Pnt2d Focus1 ();
		%feature("autodoc", "	* Returns the second focus of the hyperbola. This focus is on the negative side of the 'XAxis' of the hyperbola.

	:rtype: gp_Pnt2d
") Focus2;
		gp_Pnt2d Focus2 ();
		%feature("autodoc", "	* Returns the major or minor radius of this hyperbola. The major radius is also the distance between the center of the hyperbola and the apex of the main branch (located on the 'X Axis' of the hyperbola).

	:rtype: float
") MajorRadius;
		Standard_Real MajorRadius ();
		%feature("autodoc", "	* Returns the major or minor radius of this hyperbola. The minor radius is also the distance between the center of the hyperbola and the apex of a conjugate branch (located on the 'Y Axis' of the hyperbola).

	:rtype: float
") MinorRadius;
		Standard_Real MinorRadius ();
		%feature("autodoc", "	* Computes the 'other' branch of this hyperbola. This is a symmetrical branch with respect to the center of this hyperbola. Note: The diagram given under the class purpose indicates where the 'other' branch is positioned in relation to this branch of the hyperbola. ^ YAxis | FirstConjugateBranch | Other | Main ---------------------------- C ------------------------------------------&gtXAxis Branch | Branch | | SecondConjugateBranch | Warning The major radius can be less than the minor radius.

	:rtype: gp_Hypr2d
") OtherBranch;
		gp_Hypr2d OtherBranch ();
		%feature("autodoc", "	* Computes the parameter of this hyperbola. The parameter is: p = (e*e - 1) * MajorRadius where e is the eccentricity of this hyperbola and MajorRadius its major radius. Exceptions Standard_DomainError if the major radius of this hyperbola is null.

	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("autodoc", "	* Returns in P the point of parameter U. P = C + MajorRadius * Cosh (U) * XDir + MinorRadius * Sinh (U) * YDir where C is the center of the hyperbola , XDir the XDirection and YDir the YDirection of the hyperbola's local coordinate system.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the point P of parameter U and the first derivative V1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U, the first and second derivatives V1 and V2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Returns the point P of parameter U, the first second and third derivatives V1 V2 and V3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this hyperbola, computes the vector corresponding to the Nth derivative. Exceptions Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this hyperbola.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object which is a copy of this hyperbola.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Hyperbola::~Geom2d_Hyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Hyperbola {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Hyperbola {
	Handle_Geom2d_Hyperbola GetHandle() {
	return *(Handle_Geom2d_Hyperbola*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Hyperbola;
class Handle_Geom2d_Hyperbola : public Handle_Geom2d_Conic {

    public:
        // constructors
        Handle_Geom2d_Hyperbola();
        Handle_Geom2d_Hyperbola(const Handle_Geom2d_Hyperbola &aHandle);
        Handle_Geom2d_Hyperbola(const Geom2d_Hyperbola *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Hyperbola DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Hyperbola {
    Geom2d_Hyperbola* GetObject() {
    return (Geom2d_Hyperbola*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Hyperbola::~Handle_Geom2d_Hyperbola %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Hyperbola {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_Parabola;
class Geom2d_Parabola : public Geom2d_Conic {
	public:
		%feature("autodoc", "	* Creates a parabola from a non persistent one.

	:param Prb:
	:type Prb: gp_Parab2d
	:rtype: None
") Geom2d_Parabola;
		 Geom2d_Parabola (const gp_Parab2d & Prb);
		%feature("autodoc", "	* Creates a parabola with its 'MirrorAxis' and it's focal length 'Focal'. MirrorAxis is the axis of symmetry of the curve, it is the 'XAxis'. The 'YAxis' is parallel to the directrix of the parabola and is in the direct sense if Sense is True. The 'Location' point of 'MirrorAxis' is the vertex of the parabola Raised if Focal < 0.0

	:param MirrorAxis:
	:type MirrorAxis: gp_Ax2d
	:param Focal:
	:type Focal: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") Geom2d_Parabola;
		 Geom2d_Parabola (const gp_Ax2d & MirrorAxis,const Standard_Real Focal,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* Creates a parabola with its Axis and it's focal length 'Focal'. The XDirection of Axis is the axis of symmetry of the curve, it is the 'XAxis'. The 'YAxis' is parallel to the directrix of the parabola. The 'Location' point of 'Axis' is the vertex of the parabola. Raised if Focal < 0.0

	:param Axis:
	:type Axis: gp_Ax22d
	:param Focal:
	:type Focal: float
	:rtype: None
") Geom2d_Parabola;
		 Geom2d_Parabola (const gp_Ax22d & Axis,const Standard_Real Focal);
		%feature("autodoc", "	* D is the directrix of the parabola and F the focus point. The symmetry axis 'XAxis' of the parabola is normal to the directrix and pass through the focus point F, but its 'Location' point is the vertex of the parabola. The 'YAxis' of the parabola is parallel to D and its 'Location' point is the vertex of the parabola.

	:param D:
	:type D: gp_Ax2d
	:param F:
	:type F: gp_Pnt2d
	:rtype: None
") Geom2d_Parabola;
		 Geom2d_Parabola (const gp_Ax2d & D,const gp_Pnt2d & F);
		%feature("autodoc", "	* Assigns the value Focal to the focal length of this parabola. Exceptions Standard_ConstructionError if Focal is negative.

	:param Focal:
	:type Focal: float
	:rtype: None
") SetFocal;
		void SetFocal (const Standard_Real Focal);
		%feature("autodoc", "	* Converts the gp_Parab2d parabola Prb into this parabola.

	:param Prb:
	:type Prb: gp_Parab2d
	:rtype: None
") SetParab2d;
		void SetParab2d (const gp_Parab2d & Prb);
		%feature("autodoc", "	* Returns the non persistent parabola from gp with the same geometric properties as <self>.

	:rtype: gp_Parab2d
") Parab2d;
		gp_Parab2d Parab2d ();
		%feature("autodoc", "	* Computes the parameter on the reversed parabola for the point of parameter U on this parabola. For a parabola, the returned value is -U.

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Returns RealFirst from Standard.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns RealLast from Standard.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns False

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Returns False

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* The directrix is parallel to the 'YAxis' of the parabola. The 'Location' point of the directrix is the intersection point between the directrix and the symmetry axis ('XAxis') of the parabola.

	:rtype: gp_Ax2d
") Directrix;
		gp_Ax2d Directrix ();
		%feature("autodoc", "	* Returns the eccentricity e = 1.0

	:rtype: float
") Eccentricity;
		Standard_Real Eccentricity ();
		%feature("autodoc", "	* Computes the focus of this parabola The focus is on the positive side of the 'X Axis' of the local coordinate system of the parabola.

	:rtype: gp_Pnt2d
") Focus;
		gp_Pnt2d Focus ();
		%feature("autodoc", "	* Computes the focal length of this parabola. The focal length is the distance between the apex and the focus of the parabola.

	:rtype: float
") Focal;
		Standard_Real Focal ();
		%feature("autodoc", "	* Computes the parameter of this parabola, which is the distance between its focus and its directrix. This distance is twice the focal length. If P is the parameter of the parabola, the equation of the parabola in its local coordinate system is: Y**2 = 2.*P*X.

	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("autodoc", "	* Returns in P the point of parameter U. If U = 0 the returned point is the origin of the XAxis and the YAxis of the parabola and it is the vertex of the parabola. P = S + F * (U * U * XDir + * U * YDir) where S is the vertex of the parabola, XDir the XDirection and YDir the YDirection of the parabola's local coordinate system.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Returns the point P of parameter U and the first derivative V1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Returns the point P of parameter U, the first and second derivatives V1 and V2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Returns the point P of parameter U, the first second and third derivatives V1 V2 and V3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this parabola, computes the vector corresponding to the Nth derivative. Exceptions Standard_RangeError if N is less than 1.

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this parabola.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Computes the parameter on the transformed parabola, for the point of parameter U on this parabola. For a parabola, the returned value is equal to U multiplied by the scale factor of transformation T.

	:param U:
	:type U: float
	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") TransformedParameter;
		Standard_Real TransformedParameter (const Standard_Real U,const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns a coefficient to compute the parameter on the transformed curve for the transform of the point on <self>.  Transformed(T)->Value(U * ParametricTransformation(T))  is the same point as  Value(U).Transformed(T)  This methods returns T.ScaleFactor()

	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") ParametricTransformation;
		Standard_Real ParametricTransformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object, which is a copy of this parabola.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_Parabola::~Geom2d_Parabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_Parabola {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_Parabola {
	Handle_Geom2d_Parabola GetHandle() {
	return *(Handle_Geom2d_Parabola*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_Parabola;
class Handle_Geom2d_Parabola : public Handle_Geom2d_Conic {

    public:
        // constructors
        Handle_Geom2d_Parabola();
        Handle_Geom2d_Parabola(const Handle_Geom2d_Parabola &aHandle);
        Handle_Geom2d_Parabola(const Geom2d_Parabola *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_Parabola DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_Parabola {
    Geom2d_Parabola* GetObject() {
    return (Geom2d_Parabola*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_Parabola::~Handle_Geom2d_Parabola %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_Parabola {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor Geom2d_TrimmedCurve;
class Geom2d_TrimmedCurve : public Geom2d_BoundedCurve {
	public:
		%feature("autodoc", "	* Creates a trimmed curve from the basis curve C limited between U1 and U2. . U1 can be greater or lower than U2. . The returned curve is oriented from U1 to U2. . If the basis curve C is periodic there is an ambiguity because two parts are available. In this case by default the trimmed curve has the same orientation as the basis curve (Sense = True). If Sense = False then the orientation of the trimmed curve is opposite to the orientation of the basis curve C. If the curve is closed but not periodic it is not possible to keep the part of the curve including the junction point (except if the junction point is at the beginning or at the end of the trimmed curve) because you could lose the fundamental characteristics of the basis curve which are used for example to compute the derivatives of the trimmed curve. So for a closed curve the rules are the same as for a open curve. Warnings : In this package the entities are not shared. The TrimmedCurve is built with a copy of the curve C. So when C is modified the TrimmedCurve is not modified Warnings : If <C> is periodic, parametrics bounds of the TrimmedCurve, can be different to [<U1>;<U2>}, if <U1> or <U2> are not in the principal period. Include : For more explanation see the scheme given with this class. Raises ConstructionError the C is not periodic and U1 or U2 are out of the bounds of C. Raised if U1 = U2.

	:param C:
	:type C: Handle_Geom2d_Curve &
	:param U1:
	:type U1: float
	:param U2:
	:type U2: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") Geom2d_TrimmedCurve;
		 Geom2d_TrimmedCurve (const Handle_Geom2d_Curve & C,const Standard_Real U1,const Standard_Real U2,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* Changes the direction of parametrization of <self>. The first and the last parametric values are modified. The 'StartPoint' of the initial curve becomes the 'EndPoint' of the reversed curve and the 'EndPoint' of the initial curve becomes the 'StartPoint' of the reversed curve. Example - If the trimmed curve is defined by: - a basis curve whose parameter range is [ 0.,1. ], and - the two trim values U1 (first parameter) and U2 (last parameter), the reversed trimmed curve is defined by: - the reversed basis curve, whose parameter range is still [ 0.,1. ], and - the two trim values 1. - U2 (first parameter) and 1. - U1 (last parameter).

	:rtype: None
") Reverse;
		void Reverse ();
		%feature("autodoc", "	* Returns the parameter on the reversed curve for the point of parameter U on <self>.  returns UFirst + ULast - U

	:param U:
	:type U: float
	:rtype: float
") ReversedParameter;
		Standard_Real ReversedParameter (const Standard_Real U);
		%feature("autodoc", "	* Changes this trimmed curve, by redefining the parameter values U1 and U2, which limit its basis curve. Note: If the basis curve is periodic, the trimmed curve has the same orientation as the basis curve if Sense is true (default value) or the opposite orientation if Sense is false. Warning If the basis curve is periodic, the bounds of the trimmed curve may be different from U1 and U2 if the parametric origin of the basis curve is within the arc of the trimmed curve. In this case, the modified parameter will be equal to U1 or U2 plus or minus the period. Exceptions Standard_ConstructionError if: - the basis curve is not periodic, and either U1 or U2 are outside the bounds of the basis curve, or - U1 is equal to U2.

	:param U1:
	:type U1: float
	:param U2:
	:type U2: float
	:param Sense: default value is Standard_True
	:type Sense: bool
	:rtype: None
") SetTrim;
		void SetTrim (const Standard_Real U1,const Standard_Real U2,const Standard_Boolean Sense = Standard_True);
		%feature("autodoc", "	* Returns the basis curve. Warning This function does not return a constant reference. Consequently, any modification of the returned value directly modifies the trimmed curve.

	:rtype: Handle_Geom2d_Curve
") BasisCurve;
		Handle_Geom2d_Curve BasisCurve ();
		%feature("autodoc", "	* Returns the global continuity of the basis curve of this trimmed curve. C0 : only geometric continuity, C1 : continuity of the first derivative all along the Curve, C2 : continuity of the second derivative all along the Curve, C3 : continuity of the third derivative all along the Curve, CN : the order of continuity is infinite.

	:rtype: GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity ();
		%feature("autodoc", "	* //!--- Purpose Returns True if the order of continuity of the trimmed curve is N. A trimmed curve is at least 'C0' continuous. Warnings : The continuity of the trimmed curve can be greater than the continuity of the basis curve because you consider only a part of the basis curve. Raised if N < 0.

	:param N:
	:type N: Standard_Integer
	:rtype: bool
") IsCN;
		Standard_Boolean IsCN (const Standard_Integer N);
		%feature("autodoc", "	* Returns the end point of <self>. This point is the evaluation of the curve for the 'LastParameter'.

	:rtype: gp_Pnt2d
") EndPoint;
		gp_Pnt2d EndPoint ();
		%feature("autodoc", "	* Returns the value of the first parameter of <self>. The first parameter is the parameter of the 'StartPoint' of the trimmed curve.

	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("autodoc", "	* Returns True if the distance between the StartPoint and the EndPoint is lower or equal to Resolution from package gp.

	:rtype: bool
") IsClosed;
		Standard_Boolean IsClosed ();
		%feature("autodoc", "	* Returns true if the basis curve of this trimmed curve is periodic.

	:rtype: bool
") IsPeriodic;
		Standard_Boolean IsPeriodic ();
		%feature("autodoc", "	* Returns the period of the basis curve of this trimmed curve. Exceptions Standard_NoSuchObject if the basis curve is not periodic.

	:rtype: float
") Period;
		virtual Standard_Real Period ();
		%feature("autodoc", "	* Returns the value of the last parameter of <self>. The last parameter is the parameter of the 'EndPoint' of the trimmed curve.

	:rtype: float
") LastParameter;
		Standard_Real LastParameter ();
		%feature("autodoc", "	* Returns the start point of <self>. This point is the evaluation of the curve from the 'FirstParameter'. value and derivatives Warnings : The returned derivatives have the same orientation as the derivatives of the basis curve.

	:rtype: gp_Pnt2d
") StartPoint;
		gp_Pnt2d StartPoint ();
		%feature("autodoc", "	* If the basis curve is an OffsetCurve sometimes it is not possible to do the evaluation of the curve at the parameter U (see class OffsetCurve).

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt2d & P);
		%feature("autodoc", "	* Raised if the continuity of the curve is not C1.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:rtype: None
") D1;
		void D1 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1);
		%feature("autodoc", "	* Raised if the continuity of the curve is not C2.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:rtype: None
") D2;
		void D2 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2);
		%feature("autodoc", "	* Raised if the continuity of the curve is not C3.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt2d
	:param V1:
	:type V1: gp_Vec2d
	:param V2:
	:type V2: gp_Vec2d
	:param V3:
	:type V3: gp_Vec2d
	:rtype: None
") D3;
		void D3 (const Standard_Real U,gp_Pnt2d & P,gp_Vec2d & V1,gp_Vec2d & V2,gp_Vec2d & V3);
		%feature("autodoc", "	* For the point of parameter U of this trimmed curve, computes the vector corresponding to the Nth derivative. Warning The returned derivative vector has the same orientation as the derivative vector of the basis curve, even if the trimmed curve does not have the same orientation as the basis curve. Exceptions Standard_RangeError if N is less than 1. geometric transformations

	:param U:
	:type U: float
	:param N:
	:type N: Standard_Integer
	:rtype: gp_Vec2d
") DN;
		gp_Vec2d DN (const Standard_Real U,const Standard_Integer N);
		%feature("autodoc", "	* Applies the transformation T to this trimmed curve. Warning The basis curve is also modified.

	:param T:
	:type T: gp_Trsf2d
	:rtype: None
") Transform;
		void Transform (const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns the parameter on the transformed curve for the transform of the point of parameter U on <self>.  me->Transformed(T)->Value(me->TransformedParameter(U,T))  is the same point as  me->Value(U).Transformed(T)  This methods calls the basis curve method.

	:param U:
	:type U: float
	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") TransformedParameter;
		virtual Standard_Real TransformedParameter (const Standard_Real U,const gp_Trsf2d & T);
		%feature("autodoc", "	* Returns a coefficient to compute the parameter on the transformed curve for the transform of the point on <self>.  Transformed(T)->Value(U * ParametricTransformation(T))  is the same point as  Value(U).Transformed(T)  This methods calls the basis curve method.

	:param T:
	:type T: gp_Trsf2d
	:rtype: float
") ParametricTransformation;
		virtual Standard_Real ParametricTransformation (const gp_Trsf2d & T);
		%feature("autodoc", "	* Creates a new object, which is a copy of this trimmed curve.

	:rtype: Handle_Geom2d_Geometry
") Copy;
		Handle_Geom2d_Geometry Copy ();
};


%feature("shadow") Geom2d_TrimmedCurve::~Geom2d_TrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2d_TrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Geom2d_TrimmedCurve {
	Handle_Geom2d_TrimmedCurve GetHandle() {
	return *(Handle_Geom2d_TrimmedCurve*) &$self;
	}
};

%nodefaultctor Handle_Geom2d_TrimmedCurve;
class Handle_Geom2d_TrimmedCurve : public Handle_Geom2d_BoundedCurve {

    public:
        // constructors
        Handle_Geom2d_TrimmedCurve();
        Handle_Geom2d_TrimmedCurve(const Handle_Geom2d_TrimmedCurve &aHandle);
        Handle_Geom2d_TrimmedCurve(const Geom2d_TrimmedCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_Geom2d_TrimmedCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Geom2d_TrimmedCurve {
    Geom2d_TrimmedCurve* GetObject() {
    return (Geom2d_TrimmedCurve*)$self->Access();
    }
};
%feature("shadow") Handle_Geom2d_TrimmedCurve::~Handle_Geom2d_TrimmedCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_Geom2d_TrimmedCurve {
    void _kill_pointed() {
        delete $self;
    }
};

