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
%module (package="OCC") XCAFPrs

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

%include XCAFPrs_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(xcafprs) XCAFPrs;
class XCAFPrs {
	public:
		%feature("autodoc", "	* Collect styles defined for shape on label L and its components and subshapes and fills a map of shape - style correspondence The location <loc> is for internal use, it should be Null location for external call

	:param L:
	:type L: TDF_Label &
	:param loc:
	:type loc: TopLoc_Location &
	:param settings:
	:type settings: XCAFPrs_DataMapOfShapeStyle &
	:rtype: void
") CollectStyleSettings;
		static void CollectStyleSettings (const TDF_Label & L,const TopLoc_Location & loc,XCAFPrs_DataMapOfShapeStyle & settings);
		%feature("autodoc", "	* Iterates on shape (recursively) and splits it on parts each of which has its own style (basing on settings collected by CollectStyleSettings()) The DefStyle is default style applied to a shape if no specific style assignment is applied to it If force is True, the <shape> is added to a map even if no styles are redefined for it or its subshapes The context is for internal use, it indicates the type of the shape to which <shape> belongs

	:param shape:
	:type shape: TopoDS_Shape &
	:param settings:
	:type settings: XCAFPrs_DataMapOfShapeStyle &
	:param items:
	:type items: XCAFPrs_DataMapOfStyleShape &
	:param DefStyle:
	:type DefStyle: XCAFPrs_Style &
	:param force: default value is Standard_True
	:type force: bool
	:param context: default value is TopAbs_SHAPE
	:type context: TopAbs_ShapeEnum
	:rtype: bool
") DispatchStyles;
		static Standard_Boolean DispatchStyles (const TopoDS_Shape & shape,const XCAFPrs_DataMapOfShapeStyle & settings,XCAFPrs_DataMapOfStyleShape & items,const XCAFPrs_Style & DefStyle,const Standard_Boolean force = Standard_True,const TopAbs_ShapeEnum context = TopAbs_SHAPE);
		%feature("autodoc", "	* Set ViewNameMode for indicate display names or not.

	:param viewNameMode:
	:type viewNameMode: bool
	:rtype: void
") SetViewNameMode;
		static void SetViewNameMode (const Standard_Boolean viewNameMode);
		%feature("autodoc", "	:rtype: bool
") GetViewNameMode;
		static Standard_Boolean GetViewNameMode ();
};


%feature("shadow") XCAFPrs::~XCAFPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_AISObject;
class XCAFPrs_AISObject : public AIS_Shape {
	public:
		%feature("autodoc", "	* Creates an object to visualise the shape label

	:param lab:
	:type lab: TDF_Label &
	:rtype: None
") XCAFPrs_AISObject;
		 XCAFPrs_AISObject (const TDF_Label & lab);
		%feature("autodoc", "	:param aColor:
	:type aColor: Quantity_Color &
	:rtype: void
") SetColor;
		virtual void SetColor (const Quantity_Color & aColor);
		%feature("autodoc", "	:rtype: void
") UnsetColor;
		virtual void UnsetColor ();
		%feature("autodoc", "	:param aName:
	:type aName: Graphic3d_NameOfMaterial
	:rtype: void
") SetMaterial;
		virtual void SetMaterial (const Graphic3d_NameOfMaterial aName);
		%feature("autodoc", "	:param aName:
	:type aName: Graphic3d_MaterialAspect &
	:rtype: void
") SetMaterial;
		virtual void SetMaterial (const Graphic3d_MaterialAspect & aName);
		%feature("autodoc", "	:rtype: void
") UnsetMaterial;
		virtual void UnsetMaterial ();
		%feature("autodoc", "	:param aValue: default value is 0.6
	:type aValue: float
	:rtype: void
") SetTransparency;
		virtual void SetTransparency (const Standard_Real aValue = 0.6);
		%feature("autodoc", "	:rtype: void
") UnsetTransparency;
		virtual void UnsetTransparency ();
};


%feature("shadow") XCAFPrs_AISObject::~XCAFPrs_AISObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_AISObject {
	void _kill_pointed() {
		delete $self;
	}
};
%extend XCAFPrs_AISObject {
	Handle_XCAFPrs_AISObject GetHandle() {
	return *(Handle_XCAFPrs_AISObject*) &$self;
	}
};

%nodefaultctor Handle_XCAFPrs_AISObject;
class Handle_XCAFPrs_AISObject : public Handle_AIS_Shape {

    public:
        // constructors
        Handle_XCAFPrs_AISObject();
        Handle_XCAFPrs_AISObject(const Handle_XCAFPrs_AISObject &aHandle);
        Handle_XCAFPrs_AISObject(const XCAFPrs_AISObject *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFPrs_AISObject DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_AISObject {
    XCAFPrs_AISObject* GetObject() {
    return (XCAFPrs_AISObject*)$self->Access();
    }
};
%feature("shadow") Handle_XCAFPrs_AISObject::~Handle_XCAFPrs_AISObject %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_XCAFPrs_AISObject {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle;
class XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle;
		 XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle ();
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfShapeStyle &
	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle;
		 XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle (const XCAFPrs_DataMapOfShapeStyle & aMap);
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfShapeStyle &
	:rtype: None
") Initialize;
		void Initialize (const XCAFPrs_DataMapOfShapeStyle & aMap);
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		const TopoDS_Shape  Key ();
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Value;
		const XCAFPrs_Style & Value ();
};


%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle::~XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleShape;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfStyleShape;
		 XCAFPrs_DataMapIteratorOfDataMapOfStyleShape ();
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfStyleShape &
	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfStyleShape;
		 XCAFPrs_DataMapIteratorOfDataMapOfStyleShape (const XCAFPrs_DataMapOfStyleShape & aMap);
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfStyleShape &
	:rtype: None
") Initialize;
		void Initialize (const XCAFPrs_DataMapOfStyleShape & aMap);
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Key;
		const XCAFPrs_Style & Key ();
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Value;
		const TopoDS_Shape  Value ();
};


%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfStyleShape::~XCAFPrs_DataMapIteratorOfDataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient;
		 XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient ();
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfStyleTransient &
	:rtype: None
") XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient;
		 XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient (const XCAFPrs_DataMapOfStyleTransient & aMap);
		%feature("autodoc", "	:param aMap:
	:type aMap: XCAFPrs_DataMapOfStyleTransient &
	:rtype: None
") Initialize;
		void Initialize (const XCAFPrs_DataMapOfStyleTransient & aMap);
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Key;
		const XCAFPrs_Style & Key ();
		%feature("autodoc", "	:rtype: Handle_Standard_Transient
") Value;
		const Handle_Standard_Transient & Value ();
};


%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient::~XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public TCollection_MapNode {
	public:
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: XCAFPrs_Style &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
		 XCAFPrs_DataMapNodeOfDataMapOfShapeStyle (const TopoDS_Shape & K,const XCAFPrs_Style & I,const TCollection_MapNodePtr & n);
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Key;
		TopoDS_Shape  Key ();
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Value;
		XCAFPrs_Style & Value ();
};


%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::~XCAFPrs_DataMapNodeOfDataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*) &$self;
	}
};

%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public Handle_TCollection_MapNode {

    public:
        // constructors
        Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle();
        Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle &aHandle);
        Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const XCAFPrs_DataMapNodeOfDataMapOfShapeStyle *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
    XCAFPrs_DataMapNodeOfDataMapOfShapeStyle* GetObject() {
    return (XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*)$self->Access();
    }
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::~Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:param I:
	:type I: TopoDS_Shape &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
		 XCAFPrs_DataMapNodeOfDataMapOfStyleShape (const XCAFPrs_Style & K,const TopoDS_Shape & I,const TCollection_MapNodePtr & n);
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Key;
		XCAFPrs_Style & Key ();
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Value;
		TopoDS_Shape  Value ();
};


%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfStyleShape::~XCAFPrs_DataMapNodeOfDataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape*) &$self;
	}
};

%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public Handle_TCollection_MapNode {

    public:
        // constructors
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape();
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape &aHandle);
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const XCAFPrs_DataMapNodeOfDataMapOfStyleShape *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
    XCAFPrs_DataMapNodeOfDataMapOfStyleShape* GetObject() {
    return (XCAFPrs_DataMapNodeOfDataMapOfStyleShape*)$self->Access();
    }
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape::~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:param I:
	:type I: Handle_Standard_Transient &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
		 XCAFPrs_DataMapNodeOfDataMapOfStyleTransient (const XCAFPrs_Style & K,const Handle_Standard_Transient & I,const TCollection_MapNodePtr & n);
		%feature("autodoc", "	:rtype: XCAFPrs_Style
") Key;
		XCAFPrs_Style & Key ();
		%feature("autodoc", "	:rtype: Handle_Standard_Transient
") Value;
		Handle_Standard_Transient & Value ();
};


%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::~XCAFPrs_DataMapNodeOfDataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*) &$self;
	}
};

%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public Handle_TCollection_MapNode {

    public:
        // constructors
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient();
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient &aHandle);
        Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const XCAFPrs_DataMapNodeOfDataMapOfStyleTransient *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
    XCAFPrs_DataMapNodeOfDataMapOfStyleTransient* GetObject() {
    return (XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*)$self->Access();
    }
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor XCAFPrs_DataMapOfShapeStyle;
class XCAFPrs_DataMapOfShapeStyle : public TCollection_BasicMap {
	public:
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: Standard_Integer
	:rtype: None
") XCAFPrs_DataMapOfShapeStyle;
		 XCAFPrs_DataMapOfShapeStyle (const Standard_Integer NbBuckets = 1);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfShapeStyle &
	:rtype: XCAFPrs_DataMapOfShapeStyle
") Assign;
		XCAFPrs_DataMapOfShapeStyle & Assign (const XCAFPrs_DataMapOfShapeStyle & Other);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfShapeStyle &
	:rtype: XCAFPrs_DataMapOfShapeStyle
") operator=;
		XCAFPrs_DataMapOfShapeStyle & operator = (const XCAFPrs_DataMapOfShapeStyle & Other);
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: Standard_Integer
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:param I:
	:type I: XCAFPrs_Style &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const TopoDS_Shape & K,const XCAFPrs_Style & I);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const TopoDS_Shape & K);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const TopoDS_Shape & K);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: XCAFPrs_Style
") Find;
		const XCAFPrs_Style & Find (const TopoDS_Shape & K);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: XCAFPrs_Style
") ChangeFind;
		XCAFPrs_Style & ChangeFind (const TopoDS_Shape & K);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const TopoDS_Shape & K);
		%feature("autodoc", "	:param K:
	:type K: TopoDS_Shape &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const TopoDS_Shape & K);
};


%feature("shadow") XCAFPrs_DataMapOfShapeStyle::~XCAFPrs_DataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_DataMapOfStyleShape;
class XCAFPrs_DataMapOfStyleShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: Standard_Integer
	:rtype: None
") XCAFPrs_DataMapOfStyleShape;
		 XCAFPrs_DataMapOfStyleShape (const Standard_Integer NbBuckets = 1);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfStyleShape &
	:rtype: XCAFPrs_DataMapOfStyleShape
") Assign;
		XCAFPrs_DataMapOfStyleShape & Assign (const XCAFPrs_DataMapOfStyleShape & Other);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfStyleShape &
	:rtype: XCAFPrs_DataMapOfStyleShape
") operator=;
		XCAFPrs_DataMapOfStyleShape & operator = (const XCAFPrs_DataMapOfStyleShape & Other);
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: Standard_Integer
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:param I:
	:type I: TopoDS_Shape &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const XCAFPrs_Style & K,const TopoDS_Shape & I);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: TopoDS_Shape
") Find;
		const TopoDS_Shape  Find (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: TopoDS_Shape
") ChangeFind;
		TopoDS_Shape  ChangeFind (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const XCAFPrs_Style & K);
};


%feature("shadow") XCAFPrs_DataMapOfStyleShape::~XCAFPrs_DataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_DataMapOfStyleTransient;
class XCAFPrs_DataMapOfStyleTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: Standard_Integer
	:rtype: None
") XCAFPrs_DataMapOfStyleTransient;
		 XCAFPrs_DataMapOfStyleTransient (const Standard_Integer NbBuckets = 1);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfStyleTransient &
	:rtype: XCAFPrs_DataMapOfStyleTransient
") Assign;
		XCAFPrs_DataMapOfStyleTransient & Assign (const XCAFPrs_DataMapOfStyleTransient & Other);
		%feature("autodoc", "	:param Other:
	:type Other: XCAFPrs_DataMapOfStyleTransient &
	:rtype: XCAFPrs_DataMapOfStyleTransient
") operator=;
		XCAFPrs_DataMapOfStyleTransient & operator = (const XCAFPrs_DataMapOfStyleTransient & Other);
		%feature("autodoc", "	:param NbBuckets:
	:type NbBuckets: Standard_Integer
	:rtype: None
") ReSize;
		void ReSize (const Standard_Integer NbBuckets);
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:param I:
	:type I: Handle_Standard_Transient &
	:rtype: bool
") Bind;
		Standard_Boolean Bind (const XCAFPrs_Style & K,const Handle_Standard_Transient & I);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: bool
") IsBound;
		Standard_Boolean IsBound (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: bool
") UnBind;
		Standard_Boolean UnBind (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Handle_Standard_Transient
") Find;
		const Handle_Standard_Transient & Find (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Handle_Standard_Transient
") ChangeFind;
		Handle_Standard_Transient & ChangeFind (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Standard_Address
") Find1;
		Standard_Address Find1 (const XCAFPrs_Style & K);
		%feature("autodoc", "	:param K:
	:type K: XCAFPrs_Style &
	:rtype: Standard_Address
") ChangeFind1;
		Standard_Address ChangeFind1 (const XCAFPrs_Style & K);
};


%feature("shadow") XCAFPrs_DataMapOfStyleTransient::~XCAFPrs_DataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor XCAFPrs_Driver;
class XCAFPrs_Driver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "	:param L:
	:type L: TDF_Label &
	:param ais:
	:type ais: Handle_AIS_InteractiveObject &
	:rtype: bool
") Update;
		virtual Standard_Boolean Update (const TDF_Label & L,Handle_AIS_InteractiveObject & ais);
		%feature("autodoc", "	* returns GUID of the driver

	:rtype: Standard_GUID
") GetID;
		static const Standard_GUID & GetID ();
};


%feature("shadow") XCAFPrs_Driver::~XCAFPrs_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_Driver {
	void _kill_pointed() {
		delete $self;
	}
};
%extend XCAFPrs_Driver {
	Handle_XCAFPrs_Driver GetHandle() {
	return *(Handle_XCAFPrs_Driver*) &$self;
	}
};

%nodefaultctor Handle_XCAFPrs_Driver;
class Handle_XCAFPrs_Driver : public Handle_TPrsStd_Driver {

    public:
        // constructors
        Handle_XCAFPrs_Driver();
        Handle_XCAFPrs_Driver(const Handle_XCAFPrs_Driver &aHandle);
        Handle_XCAFPrs_Driver(const XCAFPrs_Driver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XCAFPrs_Driver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_Driver {
    XCAFPrs_Driver* GetObject() {
    return (XCAFPrs_Driver*)$self->Access();
    }
};
%feature("shadow") Handle_XCAFPrs_Driver::~Handle_XCAFPrs_Driver %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_XCAFPrs_Driver {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor XCAFPrs_Style;
class XCAFPrs_Style {
	public:
		%feature("autodoc", "	:rtype: None
") XCAFPrs_Style;
		 XCAFPrs_Style ();
		%feature("autodoc", "	:rtype: bool
") IsSetColorSurf;
		Standard_Boolean IsSetColorSurf ();
		%feature("autodoc", "	:rtype: Quantity_Color
") GetColorSurf;
		Quantity_Color GetColorSurf ();
		%feature("autodoc", "	:param col:
	:type col: Quantity_Color &
	:rtype: None
") SetColorSurf;
		void SetColorSurf (const Quantity_Color & col);
		%feature("autodoc", "	* Manage surface color setting

	:rtype: None
") UnSetColorSurf;
		void UnSetColorSurf ();
		%feature("autodoc", "	:rtype: bool
") IsSetColorCurv;
		Standard_Boolean IsSetColorCurv ();
		%feature("autodoc", "	:rtype: Quantity_Color
") GetColorCurv;
		Quantity_Color GetColorCurv ();
		%feature("autodoc", "	:param col:
	:type col: Quantity_Color &
	:rtype: None
") SetColorCurv;
		void SetColorCurv (const Quantity_Color & col);
		%feature("autodoc", "	* Manage curve color setting

	:rtype: None
") UnSetColorCurv;
		void UnSetColorCurv ();
		%feature("autodoc", "	:param visibility:
	:type visibility: bool
	:rtype: None
") SetVisibility;
		void SetVisibility (const Standard_Boolean visibility);
		%feature("autodoc", "	* Manage visibility Note: Setting visibility to False makes colors undefined This is necessary for HashCode

	:rtype: bool
") IsVisible;
		Standard_Boolean IsVisible ();
		%feature("autodoc", "	* Returs True if styles are the same Methods for using Style as key in maps

	:param other:
	:type other: XCAFPrs_Style &
	:rtype: bool
") IsEqual;
		Standard_Boolean IsEqual (const XCAFPrs_Style & other);

        %extend{
            bool __eq_wrapper__(const XCAFPrs_Style  other) {
            if (*self==other) return true;
            else return false;
            }
        }
        %pythoncode {
        def __eq__(self,right):
            try:
                return self.__eq_wrapper__(right)
            except:
                return False
        }
        		%feature("autodoc", "	* Returns a HasCode value for the Key <K> in the range 0..Upper.

	:param S:
	:type S: XCAFPrs_Style &
	:param Upper:
	:type Upper: Standard_Integer
	:rtype: int
") HashCode;
		static Standard_Integer HashCode (const XCAFPrs_Style & S,const Standard_Integer Upper);
		%feature("autodoc", "	* Returns True when the two keys are the same. Two same keys must have the same hashcode, the contrary is not necessary.

	:param S1:
	:type S1: XCAFPrs_Style &
	:param S2:
	:type S2: XCAFPrs_Style &
	:rtype: bool
") IsEqual;
		static Standard_Boolean IsEqual (const XCAFPrs_Style & S1,const XCAFPrs_Style & S2);
};


%feature("shadow") XCAFPrs_Style::~XCAFPrs_Style %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_Style {
	void _kill_pointed() {
		delete $self;
	}
};
