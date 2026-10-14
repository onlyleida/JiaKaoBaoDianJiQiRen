.class public Lcom/amap/api/mapcore/util/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/b0$a;
.implements Lcom/amap/api/mapcore/util/l2$a;
.implements Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
.implements Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/c1$n0;,
        Lcom/amap/api/mapcore/util/c1$o0;,
        Lcom/amap/api/mapcore/util/c1$p0;,
        Lcom/amap/api/mapcore/util/c1$m0;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$onMapPrintScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private A0:Lcom/amap/api/mapcore/util/l2;

.field private A1:Lcom/amap/api/mapcore/util/q;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMapScreenShotListener;",
            ">;"
        }
    .end annotation
.end field

.field B0:Lcom/amap/api/mapcore/util/i3;

.field B1:[F

.field private C:Lcom/amap/api/maps/model/AMapGestureListener;

.field protected C0:Landroid/content/Context;

.field C1:[F

.field private D:Lcom/amap/api/mapcore/util/s;

.field private D0:Lcom/amap/api/mapcore/util/a5;

.field D1:[F

.field private E:Lcom/amap/api/mapcore/util/d2;

.field protected E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

.field private F:Lcom/amap/api/maps/UiSettings;

.field private F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

.field private G:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

.field private G0:Lcom/amap/api/mapcore/util/aa;

.field private final H:Lcom/amap/api/mapcore/util/c;

.field private H0:Z

.field protected I:Z

.field public I0:I

.field private J:Z

.field public J0:I

.field private final K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

.field private K0:F

.field private L:Lcom/amap/api/mapcore/util/e4;

.field private L0:F

.field private M:Lcom/amap/api/mapcore/util/ab;

.field private M0:F

.field private N:Ljava/lang/Object;

.field private N0:Z

.field protected final O:Lcom/amap/api/mapcore/util/u;

.field private O0:Z

.field private final P:Lcom/amap/api/mapcore/util/r;

.field private P0:Z

.field private Q:Z

.field private Q0:I

.field private R:I

.field private volatile R0:Z

.field private S:Z

.field private volatile S0:Z

.field private T:Lcom/amap/api/mapcore/util/z9;

.field private T0:Z

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;",
            ">;"
        }
    .end annotation
.end field

.field private U0:Z

.field private V:Z

.field private V0:Ljava/util/concurrent/locks/Lock;

.field protected W:Lcom/autonavi/base/amap/mapcore/MapConfig;

.field private W0:I

.field private X:Z

.field private X0:I

.field private Y:Z

.field private Y0:I

.field protected Z:Lcom/amap/api/mapcore/util/q;

.field private Z0:Lcom/amap/api/mapcore/util/c1$n0;

.field private a:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private a0:Lcom/amap/api/mapcore/util/x1;

.field private a1:Lcom/amap/api/mapcore/util/h2;

.field private b:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private b0:Lcom/amap/api/maps/LocationSource;

.field private b1:Lcom/amap/api/mapcore/util/da;

.field private c:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private c0:Z

.field private c1:Lcom/amap/api/mapcore/util/z;

.field private d:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private d0:Lcom/amap/api/maps/model/Marker;

.field private d1:Lcom/amap/api/mapcore/util/b0;

.field private e:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private e1:J

.field private f:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private f0:Z

.field protected final f1:Landroid/os/Handler;

.field private g:Lcom/amap/api/maps/AMap$OnMapTouchListener;

.field private g0:Z

.field private g1:Lcom/amap/api/mapcore/util/c1$m0;

.field private h:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private h0:Z

.field private h1:Lcom/amap/api/mapcore/util/c1$m0;

.field private i:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private i0:Z

.field private i1:Lcom/amap/api/mapcore/util/c1$m0;

.field private j:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private j0:Z

.field private j1:Lcom/amap/api/mapcore/util/c1$m0;

.field private k:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private k0:Z

.field private k1:Lcom/amap/api/mapcore/util/c1$m0;

.field private l:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private l0:Landroid/graphics/Rect;

.field private l1:Lcom/amap/api/mapcore/util/c1$m0;

.field private m:Lcom/amap/api/mapcore/util/a6;

.field private m0:I

.field private m1:Lcom/amap/api/mapcore/util/c1$m0;

.field private n:Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

.field private n0:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private n1:Lcom/amap/api/mapcore/util/c1$m0;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMarkerClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private o0:Ljava/lang/Thread;

.field private o1:Lcom/amap/api/mapcore/util/c1$m0;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnPolylineClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Ljava/lang/Thread;

.field private p1:Lcom/amap/api/mapcore/util/c1$m0;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMarkerDragListener;",
            ">;"
        }
    .end annotation
.end field

.field private q0:Z

.field private q1:Ljava/lang/Runnable;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMapLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Z

.field private r1:Lcom/amap/api/mapcore/util/c1$m0;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnCameraChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private s0:Z

.field private s1:Lcom/amap/api/mapcore/util/c1$m0;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMapClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private t0:I

.field private t1:Lcom/amap/api/mapcore/util/s8;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMapTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Lcom/amap/api/maps/CustomRenderer;

.field private u1:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnPOIClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final v0:Lcom/amap/api/mapcore/util/fa;

.field private v1:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMapLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private w0:I

.field private w1:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private x0:I

.field x1:Landroid/graphics/Point;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field y1:Landroid/graphics/Rect;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private z0:Lcom/amap/api/mapcore/util/j2;

.field private z1:J


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore/util/c1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->a:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 4
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->b:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 5
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->c:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 6
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->d:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 7
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->e:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 8
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->f:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 9
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->g:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 10
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->h:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 11
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->i:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 12
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->j:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 13
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->k:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    .line 14
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->l:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 15
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    .line 16
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->n:Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->r:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->A:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->B:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->E:Lcom/amap/api/mapcore/util/d2;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->I:Z

    .line 33
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->J:Z

    .line 34
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->N:Ljava/lang/Object;

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Q:Z

    .line 37
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    .line 39
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    .line 40
    new-instance v1, Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 41
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    .line 42
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Y:Z

    .line 43
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->c0:Z

    .line 44
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    .line 45
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 46
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->f0:Z

    .line 47
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->g0:Z

    .line 48
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->h0:Z

    .line 49
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->i0:Z

    .line 50
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->j0:Z

    .line 51
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->k0:Z

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->l0:Landroid/graphics/Rect;

    .line 53
    iput v2, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    .line 54
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 55
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->q0:Z

    .line 56
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->r0:Z

    .line 57
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->s0:Z

    .line 58
    iput v0, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->w0:I

    .line 60
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    .line 62
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    .line 63
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->H0:Z

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->K0:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    .line 66
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->M0:F

    .line 67
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->N0:Z

    .line 68
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    .line 69
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->P0:Z

    .line 70
    iput v0, p0, Lcom/amap/api/mapcore/util/c1;->Q0:I

    .line 71
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    .line 72
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    .line 73
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->T0:Z

    .line 74
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z

    .line 75
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->V0:Ljava/util/concurrent/locks/Lock;

    .line 76
    iput v0, p0, Lcom/amap/api/mapcore/util/c1;->W0:I

    .line 77
    new-instance v1, Lcom/amap/api/mapcore/util/c1$k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amap/api/mapcore/util/c1$k;-><init>(Lcom/amap/api/mapcore/util/c1;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    .line 78
    new-instance v1, Lcom/amap/api/mapcore/util/c1$b;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$b;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->g1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 79
    new-instance v1, Lcom/amap/api/mapcore/util/c1$m;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$m;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->h1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 80
    new-instance v1, Lcom/amap/api/mapcore/util/c1$y;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$y;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->i1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 81
    new-instance v1, Lcom/amap/api/mapcore/util/c1$a0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$a0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->j1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 82
    new-instance v1, Lcom/amap/api/mapcore/util/c1$b0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$b0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->k1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 83
    new-instance v1, Lcom/amap/api/mapcore/util/c1$c0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$c0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->l1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 84
    new-instance v1, Lcom/amap/api/mapcore/util/c1$d0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$d0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->m1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 85
    new-instance v1, Lcom/amap/api/mapcore/util/c1$e0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$e0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->n1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 86
    new-instance v1, Lcom/amap/api/mapcore/util/c1$v;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$v;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->o1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 87
    new-instance v1, Lcom/amap/api/mapcore/util/c1$f0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$f0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->p1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 88
    new-instance v1, Lcom/amap/api/mapcore/util/c1$g0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$g0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->q1:Ljava/lang/Runnable;

    .line 89
    new-instance v1, Lcom/amap/api/mapcore/util/c1$h0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$h0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->r1:Lcom/amap/api/mapcore/util/c1$m0;

    .line 90
    new-instance v1, Lcom/amap/api/mapcore/util/c1$i0;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$i0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->s1:Lcom/amap/api/mapcore/util/c1$m0;

    const-string v1, ""

    .line 91
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->u1:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->v1:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->w1:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    .line 94
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->x1:Landroid/graphics/Point;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y1:Landroid/graphics/Rect;

    const-wide/16 v1, 0x0

    .line 96
    iput-wide v1, p0, Lcom/amap/api/mapcore/util/c1;->z1:J

    .line 97
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->A1:Lcom/amap/api/mapcore/util/q;

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 98
    iput-object v2, p0, Lcom/amap/api/mapcore/util/c1;->B1:[F

    new-array v2, v1, [F

    .line 99
    iput-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C1:[F

    new-array v1, v1, [F

    .line 100
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->D1:[F

    .line 101
    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/amap/api/mapcore/util/p8;->a()V

    .line 103
    new-instance v1, Lcom/amap/api/mapcore/util/s8;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v1, v2, p0, p4}, Lcom/amap/api/mapcore/util/s8;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    .line 104
    new-instance v1, Lcom/amap/api/mapcore/util/a5;

    invoke-direct {v1, p2, p0, p1}, Lcom/amap/api/mapcore/util/a5;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/c1;Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->D0:Lcom/amap/api/mapcore/util/a5;

    .line 105
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/e6;->h(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/amap/api/mapcore/util/b3;->a()Lcom/amap/api/mapcore/util/b3;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/b3;->c(Landroid/content/Context;)V

    .line 107
    invoke-static {p2}, Lcom/amap/api/mapcore/util/c5;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/mapcore/util/x9;->b:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/s2;->b(Landroid/content/Context;)V

    .line 109
    new-instance v1, Lcom/amap/api/mapcore/util/aa;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/aa;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    .line 110
    new-instance v1, Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    .line 111
    new-instance v1, Lcom/autonavi/base/ae/gmap/GLMapRender;

    invoke-direct {v1, p0}, Lcom/autonavi/base/ae/gmap/GLMapRender;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    .line 113
    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 114
    new-instance v1, Lcom/amap/api/mapcore/util/c;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    .line 115
    new-instance v1, Lcom/amap/api/mapcore/util/e4;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/amap/api/mapcore/util/e4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    .line 116
    new-instance v2, Lcom/amap/api/mapcore/util/c1$o0;

    invoke-direct {v2, p0, p3}, Lcom/amap/api/mapcore/util/c1$o0;-><init>(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/mapcore/util/c1$k;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/e4;->m(Lcom/amap/api/mapcore/util/c4$d;)V

    .line 117
    new-instance p3, Lcom/amap/api/mapcore/util/c1$n0;

    invoke-direct {p3, p0}, Lcom/amap/api/mapcore/util/c1$n0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->Z0:Lcom/amap/api/mapcore/util/c1$n0;

    .line 118
    new-instance p3, Lcom/amap/api/mapcore/util/r;

    invoke-direct {p3, p0}, Lcom/amap/api/mapcore/util/r;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    .line 119
    new-instance p3, Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p3, v1, p0}, Lcom/amap/api/mapcore/util/u;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    .line 120
    new-instance p3, Lcom/amap/api/mapcore/util/z9;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p3, v1, p0}, Lcom/amap/api/mapcore/util/z9;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    .line 121
    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V

    .line 122
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 p3, 0x41700000    # 15.0f

    invoke-virtual {p1, p3}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 123
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;)V

    .line 124
    new-instance p1, Lcom/amap/api/mapcore/util/ja;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/ja;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->G:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    .line 125
    new-instance p1, Lcom/amap/api/mapcore/util/a6;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/a6;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    .line 126
    new-instance p1, Lcom/amap/api/mapcore/util/d2;

    invoke-direct {p1, p0, p2}, Lcom/amap/api/mapcore/util/d2;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E:Lcom/amap/api/mapcore/util/d2;

    .line 127
    new-instance p1, Lcom/amap/api/mapcore/util/s;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/s;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    .line 128
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/s;->j(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V

    .line 129
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E:Lcom/amap/api/mapcore/util/d2;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/s;->s(Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;)V

    .line 130
    new-instance p1, Lcom/amap/api/mapcore/util/fa;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/fa;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->v0:Lcom/amap/api/mapcore/util/fa;

    .line 131
    new-instance p1, Lcom/amap/api/mapcore/util/d9;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/mapcore/util/d9;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->o0:Ljava/lang/Thread;

    .line 132
    new-instance p1, Lcom/amap/api/mapcore/util/t;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/t;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    .line 133
    new-instance p1, Lcom/amap/api/mapcore/util/z;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/z;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    .line 134
    new-instance p1, Lcom/amap/api/mapcore/util/da;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/da;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    .line 135
    new-instance p1, Lcom/amap/api/mapcore/util/j2;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/mapcore/util/j2;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->z0:Lcom/amap/api/mapcore/util/j2;

    .line 136
    new-instance p1, Lcom/amap/api/mapcore/util/l2;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/l2;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    .line 137
    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/l2;->c(Lcom/amap/api/mapcore/util/l2$a;)V

    .line 138
    invoke-direct {p0, p4}, Lcom/amap/api/mapcore/util/c1;->Q(Z)V

    .line 139
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isAbroadEnable()Z

    move-result v0

    .line 141
    :cond_0
    new-instance p1, Lcom/amap/api/mapcore/util/b0;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v0}, Lcom/amap/api/mapcore/util/b0;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    .line 142
    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/b0;->b(Lcom/amap/api/mapcore/util/b0$a;)V

    return-void
.end method

.method static synthetic A0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->t:Ljava/util/List;

    return-object p0
.end method

.method private B(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getSrvViewStateBoolValue(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private B0()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->F(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/autonavi/base/ae/gmap/GLMapState;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 7
    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object v3, v0, v4

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 9
    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method static synthetic C0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    return-object p0
.end method

.method static synthetic D(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    return p0
.end method

.method private D0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->A:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->B:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    .line 17
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 18
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 19
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 20
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 21
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->e:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 22
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 23
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->g:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 24
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->h:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 25
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->i:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->j:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 27
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->k:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    .line 28
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->l:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 29
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    .line 30
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n:Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    return-void
.end method

.method static synthetic E(Lcom/amap/api/mapcore/util/c1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->P0:Z

    return p1
.end method

.method static synthetic E0(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->Y:Z

    return p0
.end method

.method private F(Lcom/amap/api/maps/model/LatLngBounds;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic F0(Lcom/amap/api/mapcore/util/c1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c1;->X0:I

    return p0
.end method

.method static synthetic G(Lcom/amap/api/mapcore/util/c1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->w0:I

    return p1
.end method

.method static synthetic G0(Lcom/amap/api/mapcore/util/c1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c1;->Y0:I

    return p0
.end method

.method private H(III)Lcom/amap/api/maps/model/Poi;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/c1;->f(IIII)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    iget p2, p1, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    int-to-long p2, p2

    iget v0, p1, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    int-to-long v2, v0

    const/16 v0, 0x14

    invoke-static {p2, p3, v2, v3, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p2

    .line 6
    new-instance p3, Lcom/amap/api/maps/model/Poi;

    iget-object v0, p1, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object p1, p1, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    invoke-direct {p3, v0, v8, p1}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    :cond_2
    return-object v1
.end method

.method static synthetic H0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object p0
.end method

.method static synthetic I(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I0(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    return p0
.end method

.method static synthetic J0(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    return p0
.end method

.method static synthetic K0(Lcom/amap/api/mapcore/util/c1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    return p0
.end method

.method static synthetic L0(Lcom/amap/api/mapcore/util/c1;)Lcom/autonavi/base/ae/gmap/GLMapRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    return-object p0
.end method

.method static synthetic M0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c1$n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->Z0:Lcom/amap/api/mapcore/util/c1$n0;

    return-object p0
.end method

.method private N(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/c1$l0;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$l0;-><init>(Lcom/amap/api/mapcore/util/c1;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic N0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->A1:Lcom/amap/api/mapcore/util/q;

    return-object p0
.end method

.method static synthetic O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->y:Ljava/util/List;

    return-object p0
.end method

.method private P(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    return-object p0
.end method

.method private Q(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v0, :cond_4

    const-string v1, "getAbroadEnable"

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 5
    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAbroadEnable(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {v2}, Lcom/amap/api/maps/MapsInitializer;->setSupportRecycleView(Z)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    const-string v0, "getLogoEnable"

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/s8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/e4;->t(Z)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    const-string v1, "getMapZindex"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 12
    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    :cond_4
    return-void
.end method

.method static synthetic Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/amap/api/mapcore/util/c1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->i0:Z

    return p1
.end method

.method private S(Lcom/amap/api/maps/model/CameraPosition;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean p1, p1, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/k3;->c([Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic T(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->r:Ljava/util/List;

    return-object p0
.end method

.method private X(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/c1$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/c1$a;-><init>(Lcom/amap/api/mapcore/util/c1;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic Y(Lcom/amap/api/mapcore/util/c1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->s0:Z

    return p1
.end method

.method static synthetic Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    return-object p0
.end method

.method private c0(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v2, p1, v1}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 4
    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 5
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    .line 7
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/r;->i(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 9
    new-instance v3, Lcom/amap/api/maps/model/Polyline;

    move-object v4, p1

    check-cast v4, Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    invoke-direct {v3, v4}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/c1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->Q0:I

    return p1
.end method

.method static synthetic d0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/c1;III)Lcom/amap/api/maps/model/Poi;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/c1;->H(III)Lcom/amap/api/maps/model/Poi;

    move-result-object p0

    return-object p0
.end method

.method private e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    .line 5
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    .line 9
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapAngle()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    .line 12
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method

.method private g0(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->t(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->x()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    move-object v3, p1

    check-cast v3, Lcom/amap/api/mapcore/util/w1;

    invoke-direct {v2, v3}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    move-object v4, p1

    check-cast v4, Lcom/amap/api/mapcore/util/w1;

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/u;->m(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v3, v2}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/u;->B()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_0
    return v1

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 10
    invoke-interface {v5, v2}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_1

    :cond_4
    if-nez v4, :cond_6

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/u;->B()I

    move-result v2

    if-gtz v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    :goto_2
    return v1

    .line 12
    :cond_7
    :goto_3
    move-object v2, p1

    check-cast v2, Lcom/amap/api/mapcore/util/w1;

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/c1;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V

    .line 13
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isViewMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 14
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    .line 16
    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v2, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore/util/c1;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 17
    invoke-static {v8}, Lcom/amap/api/mapcore/util/h;->e(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return v1

    :catchall_0
    move-exception p1

    const-string v1, "AMapDelegateImp"

    const-string v2, "onMarkerTap"

    .line 18
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return v0
.end method

.method private h0()Lcom/amap/api/maps/model/LatLng;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 3
    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v7

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->A:Ljava/util/List;

    return-object p0
.end method

.method private k(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isWorldMapEnable()Z

    move-result p1

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result p2

    if-eq p1, p2, :cond_4

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->x(Z)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setWorldMapEnable(Z)V

    :cond_4
    return-void
.end method

.method private k0(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/amap/api/mapcore/util/c1;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/z;->g(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result p1

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->B:Ljava/util/List;

    return-object p0
.end method

.method private m(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->c0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v0, p1, v3}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 8
    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v6

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v6, v8

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v0

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 9
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private declared-synchronized m0()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->t()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/c1;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->X(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->q(Lcom/amap/api/maps/model/CameraPosition;)V

    return-void
.end method

.method private o0(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/s;->m(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/u;->x()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 6
    :cond_0
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    check-cast p1, Lcom/amap/api/mapcore/util/w1;

    invoke-direct {v2, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v3, v2}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :catchall_0
    :cond_2
    return v0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/util/c1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->u(Ljava/util/List;)V

    return-void
.end method

.method private p0()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/r3;->a0(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Z)[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    .line 4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->y1:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->getPixel20Bound(Landroid/graphics/Rect;II)V

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->y1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/autonavi/base/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private q(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->S(Lcom/amap/api/maps/model/CameraPosition;)Z

    move-result p1

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->k0:Z

    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->k0:Z

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/amap/api/mapcore/util/c1;->M(IZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->k0:Z

    if-nez p1, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->k0:Z

    .line 8
    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore/util/c1;->M(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aa;->b()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->H0:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    new-instance v0, Lcom/amap/api/mapcore/util/c1$j0;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$j0;-><init>(Lcom/amap/api/mapcore/util/c1;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->isUseAnchor:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->anchorX:I

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->anchorY:I

    .line 4
    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    .line 6
    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iput-object v0, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;

    return-void
.end method

.method static synthetic r0(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->P0:Z

    return p0
.end method

.method static synthetic s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    return-object p0
.end method

.method private t0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Y:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Y:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->x(Z)V

    :cond_0
    const/4 v0, 0x2

    .line 5
    iget-wide v1, p0, Lcom/amap/api/mapcore/util/c1;->z1:J

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 6
    iput-wide v1, p0, Lcom/amap/api/mapcore/util/c1;->z1:J

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->D()Lcom/amap/api/mapcore/util/z3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/c1;->e1:J

    sub-long/2addr v1, v4

    invoke-static {v3, v1, v2}, Lcom/amap/api/mapcore/util/p3;->d(Landroid/content/Context;J)V

    .line 11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/c1$c;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/c1$c;-><init>(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/mapcore/util/z3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private u(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private u0(I)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->H0:Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->g0:Z

    if-eqz v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->g0:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->f0:Z

    if-eqz v0, :cond_1

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->f0:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->h0:Z

    if-eqz v0, :cond_2

    .line 8
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->h0:Z

    .line 9
    :cond_2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->c0:Z

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_4

    .line 11
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "OnMarkerDragListener.onMarkerDragEnd"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    new-instance v0, Lcom/amap/api/mapcore/util/c1$k0;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/c1$k0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    const-wide/16 v1, 0x12c

    invoke-interface {p1, v0, v1, v2}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private v(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private v0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->q0:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o0:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->q0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private w(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->j0:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/amap/api/mapcore/util/r3;->n(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->j0:Z

    :cond_0
    return-void
.end method

.method private w0(I)V
    .locals 0

    return-void
.end method

.method static synthetic x0(Lcom/amap/api/mapcore/util/c1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c1;->i0:Z

    return p0
.end method

.method static synthetic y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c1;->v:Ljava/util/List;

    return-object p0
.end method

.method private z0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->r0:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/b7;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/b7;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    const-string v1, "AuthProThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->r0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected A([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    array-length p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v9, p1

    .line 2
    invoke-virtual/range {v2 .. v9}, Lcom/amap/api/mapcore/util/c1;->i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/p3;->g(Landroid/content/Context;Z)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/p3;->g(Landroid/content/Context;Z)V

    :goto_2
    return-void
.end method

.method public C(III)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->b(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 4
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/h;->d(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c;->isZoomInByScreenCenter()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->x1:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 8
    iput p3, p1, Landroid/graphics/Point;->y:I

    .line 9
    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/h;->d(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/h;->d(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImp"

    const-string p3, "onDoubleTap"

    .line 12
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/c1$d;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$d;-><init>(Lcom/amap/api/mapcore/util/c1;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized L(IIII)V
    .locals 8

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/c1;->i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public M(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/c1$h;-><init>(Lcom/amap/api/mapcore/util/c1;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 6
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I

    :goto_0
    return-void
.end method

.method public O(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->requestRender()V

    :cond_0
    return-void
.end method

.method public V(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->j0(I)V

    return-void
.end method

.method public W(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$i;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/c1$i;-><init>(Lcom/amap/api/mapcore/util/c1;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->r1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 6
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore/util/q2;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->setCustomTextureResourcePath(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/q2;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/c1;->A([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v0, :cond_0

    const-string v1, "onAbroadStyleComplete"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore/util/s8;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeRenderer;->nativeDrawLineInit()V

    return-void
.end method

.method public accelerateNetworkInChinese(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "accelerateNetworkInChinese"

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore/util/s8;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->e(Lcom/amap/api/maps/model/ArcOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IArcDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Arc;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addBuildingOverlay()Lcom/amap/api/maps/model/BuildingOverlay;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->b()Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/p3;->o(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/BuildingOverlay;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/BuildingOverlay;-><init>(Lcom/autonavi/amap/api/mapcore/overlays/IBuildingDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->f(Lcom/amap/api/maps/model/CircleOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/ICircleDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getAttribute()Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->addOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V

    .line 7
    :cond_2
    new-instance v1, Lcom/amap/api/maps/model/CrossOverlay;

    invoke-direct {v1, p1, v0}, Lcom/amap/api/maps/model/CrossOverlay;-><init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;)V

    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addGLModel(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z9;->a(Lcom/amap/api/maps/model/GL3DModelOptions;)Lcom/amap/api/maps/model/GL3DModel;

    move-result-object p1

    return-object p1
.end method

.method public addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    iput-boolean v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isUseAnchor:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorX:I

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p2, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->anchorY:I

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isGestureScaleByMapCenter()Z

    move-result v4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v6

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addGestureMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->g(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addHeatMapLayer(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/amap/api/maps/model/HeatMapLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->d(Lcom/amap/api/maps/model/HeatMapLayerOptions;)Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/HeatMapLayer;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/HeatMapLayer;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IHeatMapLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/u;->e(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z;->b(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/MultiPointOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/MultiPointOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addNaviRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->h(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/INavigateArrowDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->r:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    iget-object v0, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V

    .line 5
    iget v2, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v3, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v4, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v5, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object p1, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object p1, p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 8
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->addOverlayTextureItem(IIFFII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public addParticleOverlay(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/amap/api/maps/model/particle/ParticleOverlay;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->c(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->j(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/particle/ParticleOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlay;-><init>(Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->j(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolygonDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->k(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/autonavi/base/amap/api/mapcore/overlays/IPolylineDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->b(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addTextureItem(Lcom/amap/api/mapcore/util/ha;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->N:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/amap/api/mapcore/util/ab;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/amap/api/mapcore/util/ab;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    instance-of v1, v1, Lcom/amap/api/maps/model/HeatmapTileProvider;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/p3;->c(Landroid/content/Context;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/ab;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public afterAnimation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->redrawInfoWindow()V

    return-void
.end method

.method public afterDrawFrame(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 6
    :goto_1
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->Q0:I

    if-ne p1, v2, :cond_4

    .line 7
    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->Q0:I

    .line 8
    :cond_4
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->K0:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    .line 9
    iput p2, p0, Lcom/amap/api/mapcore/util/c1;->K0:F

    .line 10
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z

    if-nez p1, :cond_6

    .line 11
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z

    :cond_6
    return-void
.end method

.method public afterDrawLabel(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->g()V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/mapcore/util/s8;->c(Lcom/autonavi/amap/api/mapcore/IGLMapState;Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ab;->g()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/amap/api/mapcore/util/r;->r(ZI)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getViewMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getProjectionMatrix()[F

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/amap/api/mapcore/util/z;->f(Lcom/autonavi/base/amap/mapcore/MapConfig;[F[F)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z9;->b()V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/u;->n(Z)V

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E:Lcom/amap/api/mapcore/util/d2;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/mapcore/util/d2;->k(II)V

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_7
    return-void
.end method

.method public afterRendererOver(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/u;->n(Z)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_2
    return-void
.end method

.method public animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    return-void
.end method

.method public animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/c1;->animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    .line 1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore/util/c1;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/c1;->animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iput-object p4, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 4
    iput-wide p2, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mDuration:J

    .line 5
    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->interruptAnimation()V

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->r(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    .line 9
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    .line 12
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    .line 13
    iget-object p1, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public b(I)F
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->j0(I)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderResume()V

    :cond_0
    return-void
.end method

.method public beforeDrawLabel(ILcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->g()V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    const/4 p2, 0x1

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/mapcore/util/r;->r(ZI)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_1
    return-void
.end method

.method public c(ILandroid/graphics/Rect;II)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isEngineCreated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 6
    invoke-static {p3, p4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->calMapZoomScalefactor(III)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    .line 7
    new-instance v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;-><init>()V

    .line 8
    iput p1, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->engineId:I

    .line 9
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->x:I

    .line 10
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->y:I

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->width:I

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->height:I

    .line 13
    iput p3, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenWidth:I

    .line 14
    iput p4, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenHeight:I

    .line 15
    iput v1, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->screenScale:F

    .line 16
    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->M0:F

    mul-float p2, p2, v1

    iput p2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->textScale:F

    .line 17
    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    iput p2, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;->mapZoomScale:F

    .line 18
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createAMapEngineWithFrame(Lcom/autonavi/base/ae/gmap/GLMapEngine$MapViewInitParam;)V

    .line 19
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p2, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p2

    .line 20
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 21
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 22
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    .line 23
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide p3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    .line 24
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p3, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/base/ae/gmap/GLMapState;)V

    .line 25
    new-instance p2, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    invoke-direct {p2, p1, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 26
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p3, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setOvelayBundle(ILcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;)V

    goto :goto_0

    .line 27
    :cond_0
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore/util/c1;->h(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    .line 1
    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMaxZoomLevel()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 6
    invoke-virtual {v1, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 7
    invoke-virtual {v1, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 8
    new-instance p5, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p6, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {p5, p6, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    .line 9
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/r3;->t(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p1

    .line 12
    invoke-virtual {p5}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p2

    .line 14
    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lcom/autonavi/amap/mapcore/IPoint;

    iget p4, p4, Landroid/graphics/Point;->x:I

    check-cast p3, Lcom/autonavi/amap/mapcore/IPoint;

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {p4, p3, p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 15
    new-instance p3, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance p4, Lcom/amap/api/maps/model/LatLng;

    iget-wide p5, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p4, p5, p6, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p3, p1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 18
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide p3

    double-to-int p3, p3

    invoke-static {p2, p3, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 19
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    new-instance p4, Lcom/amap/api/maps/model/LatLng;

    iget-wide p5, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p4, p5, p6, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p2
.end method

.method public canShowIndoorSwitch()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getZoomLevel()F

    move-result v0

    const/16 v1, 0x11

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/amap/api/mapcore/util/c1;->j(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->l0:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canStopMapRender()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    :cond_0
    return v1
.end method

.method public changeGLOverlayIndex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->y()V

    return-void
.end method

.method public changeLogoIconStyle(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/e4;->s(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c;->requestRefreshLogo()V

    :cond_1
    return-void
.end method

.method public changeMapLogo(IZ)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/e4;->M(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public changeSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    .line 3
    iput p2, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapWidth(I)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_0
    return-void
.end method

.method public changeSurface(ILjavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Lcom/amap/api/mapcore/util/c1;->createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 5
    iget v2, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/aa;->g()I

    move-result v1

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/aa;->j()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    const-string v2, "window"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v3, v2}, Lcom/amap/api/mapcore/util/aa;->c(II)V

    .line 12
    :cond_2
    iput p3, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    .line 13
    iput p4, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->s0:Z

    .line 15
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/c1;->l0:Landroid/graphics/Rect;

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    iget v4, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    iget v4, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/amap/api/mapcore/util/c1;->c(ILandroid/graphics/Rect;II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    .line 17
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_3

    .line 19
    iget v2, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    invoke-virtual {p1, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapZoomScale(F)V

    .line 20
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapWidth(I)V

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, p4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapHeight(I)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    .line 23
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setSimple3DEnable(IZ)V

    .line 24
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->initNativeTexture(I)V

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const-string v0, "{\"bounds\" : [{\"x2\" : 235405312,\"x1\" : 188874751,\"y2\" : 85065727,\"y1\" : 122421247}],\"sublyr\" : [{\"type\" : 4,\"sid\" : 9000006,\"zlevel\" : 2}],\"id\" : 9006,\"minzoom\" : 6,\"update_period\" : 90,\"maxzoom\" : 20,\"cachemode\" : 2,\"url\" : \"http://mpsapi.amap.com//ws/mps/lyrdata/ugc/\"}"

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapOpenLayer(Ljava/lang/String;)V

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->D0:Lcom/amap/api/mapcore/util/a5;

    if-eqz p1, :cond_5

    .line 27
    new-instance v0, Lcom/amap/api/mapcore/util/ga;

    const/16 v2, 0x99

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/ga;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/a5;->b(Lcom/amap/api/mapcore/util/ga;)V

    .line 28
    :cond_5
    monitor-enter p0

    .line 29
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    if-nez p1, :cond_6

    .line 32
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    shr-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    .line 33
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    shr-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    goto :goto_0

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->X0:I

    add-int/lit8 v2, p3, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    .line 35
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->Y0:I

    add-int/lit8 v2, p4, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setProjectionCenter(III)V

    .line 37
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->I:Z

    .line 38
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->o1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->i1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_8

    .line 41
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->j1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->g1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 46
    :cond_a
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->k1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 48
    :cond_b
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->r1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 50
    :cond_c
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->l1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 52
    :cond_d
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->m1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 54
    :cond_e
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->n1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_f

    .line 55
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 56
    :cond_f
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->p1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_10

    .line 57
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 58
    :cond_10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->h1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_11

    .line 59
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 60
    :cond_11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->s1:Lcom/amap/api/mapcore/util/c1$m0;

    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    if-eqz v0, :cond_12

    .line 61
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 62
    :cond_12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->u0:Lcom/amap/api/maps/CustomRenderer;

    if-eqz p1, :cond_13

    .line 63
    invoke-interface {p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 64
    :cond_13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz p1, :cond_14

    .line 65
    invoke-virtual {p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/s8;->e(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 66
    :cond_14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    if-eqz p1, :cond_15

    .line 67
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->q1:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_15
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->redrawInfoWindow()V

    return-void

    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/c1;->changeSurface(ILjavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkMapState(Lcom/autonavi/amap/api/mapcore/IGLMapState;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v2, :cond_8

    iget-boolean v3, v1, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v3, :cond_1

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 5
    iget-object v4, v2, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 7
    iget-object v2, v2, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    new-array v2, v10, [Lcom/autonavi/amap/mapcore/IPoint;

    aput-object v3, v2, v12

    aput-object v4, v2, v11

    .line 8
    iget-object v3, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    move-object v3, v2

    .line 9
    :cond_1
    iget-object v13, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    aget-object v2, v3, v12

    iget v14, v2, Landroid/graphics/Point;->x:I

    aget-object v2, v3, v12

    iget v15, v2, Landroid/graphics/Point;->y:I

    aget-object v2, v3, v11

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v4, v3, v11

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v19

    move/from16 v16, v2

    move/from16 v17, v4

    invoke-static/range {v13 .. v19}, Lcom/amap/api/mapcore/util/r3;->b0(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIIII)F

    move-result v2

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapZoomer()F

    move-result v4

    .line 11
    iget-object v5, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    iget-object v5, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v5

    .line 13
    iget-object v6, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v6

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    cmpg-float v2, v5, v6

    if-gez v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_5

    cmpg-float v5, v4, v2

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    .line 15
    :goto_1
    invoke-interface {v0, v2}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V

    .line 16
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v13

    .line 17
    invoke-interface {v0, v13}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 18
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 19
    iget v15, v13, Landroid/graphics/Point;->y:I

    .line 20
    aget-object v2, v3, v12

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v4, v3, v12

    iget v4, v4, Landroid/graphics/Point;->y:I

    aget-object v5, v3, v11

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v3, v3, v11

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget-object v7, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    move v8, v14

    move v9, v15

    invoke-static/range {v2 .. v9}, Lcom/amap/api/mapcore/util/r3;->Z(IIIILcom/autonavi/amap/mapcore/interfaces/IMapConfig;Lcom/autonavi/amap/api/mapcore/IGLMapState;II)[I

    move-result-object v2

    if-eqz v2, :cond_6

    .line 21
    array-length v3, v2

    if-ne v3, v10, :cond_6

    .line 22
    aget v14, v2, v12

    .line 23
    aget v15, v2, v11

    :cond_6
    int-to-double v2, v14

    int-to-double v4, v15

    .line 24
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapGeoCenter(DD)V

    .line 25
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_2

    .line 26
    :cond_7
    iget-object v2, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->getMapZoomer()F

    move-result v2

    .line 28
    iget-object v3, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v3

    .line 29
    iget-object v4, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v4

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 31
    invoke-interface {v0, v2}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkZoomLevel(F)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/r3;->f(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;F)F

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clear(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->hideInfoWindow()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->p()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/x1;->r()Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->s()V

    :cond_1
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->u(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->j()V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->s(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z9;->f()V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/e4;->R()V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z;->i()V

    .line 19
    :cond_4
    new-instance p1, Lcom/amap/api/mapcore/util/c1$j;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c1$j;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "clear"

    .line 21
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public clearTileCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->p()V

    :cond_0
    return-void
.end method

.method public createGLOverlay(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public createId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/c1;->e1:J

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->D()Lcom/amap/api/mapcore/util/z3;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/z3;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z3;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->D()Lcom/amap/api/mapcore/util/z3;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/z3;->b:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z3;->a(I)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/AeUtil;->loadLib(Landroid/content/Context;)Z

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/autonavi/base/amap/mapcore/AeUtil;->initCrashHandle(Landroid/content/Context;Z)V

    .line 11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/AeUtil;->initResource(Landroid/content/Context;)Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createAMapInstance(Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->w0(I)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->N:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-nez v1, :cond_1

    .line 16
    new-instance v1, Lcom/amap/api/mapcore/util/ab;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/amap/api/mapcore/util/ab;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    .line 17
    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    new-instance p1, Lcom/amap/api/mapcore/util/h2;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/h2;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    .line 19
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/r;->n(Lcom/amap/api/mapcore/util/h2;)V

    .line 20
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz p1, :cond_2

    const-string v1, "setGLShaderManager"

    .line 21
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    invoke-virtual {p1, v1, v2}, Lcom/amap/api/mapcore/util/s8;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/16 p1, 0x1f01

    .line 23
    invoke-interface {p2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 24
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 25
    :try_start_6
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const-string v1, "AMapDElegateImp"

    const-string v2, "createSurface"

    .line 26
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getNativeInstance()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 30
    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    .line 31
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/da;->c(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->v0()V

    .line 37
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->u0:Lcom/amap/api/maps/CustomRenderer;

    if-eqz p1, :cond_4

    .line 38
    invoke-interface {p1, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz p1, :cond_5

    .line 40
    invoke-virtual {p1, p2, p3}, Lcom/amap/api/mapcore/util/s8;->f(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 41
    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->a0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 42
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/c1;->createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D0:Lcom/amap/api/mapcore/util/a5;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a5;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->h()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    .line 9
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->Z0:Lcom/amap/api/mapcore/util/c1$n0;

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->renderPause()V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/da;->g()V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/aa;->d(Lcom/amap/api/maps/model/AMapGestureListener;)V

    .line 16
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/aa;->m()V

    .line 17
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/r;->x()V

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u;->D()V

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ab;->n()V

    .line 24
    :cond_8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->m0()V

    .line 25
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->o0:Ljava/lang/Thread;

    if-eqz v1, :cond_9

    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 27
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o0:Ljava/lang/Thread;

    .line 28
    :cond_9
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p0:Ljava/lang/Thread;

    .line 31
    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->z0:Lcom/amap/api/mapcore/util/j2;

    if-eqz v1, :cond_b

    .line 32
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/j2;->a()V

    .line 33
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z0:Lcom/amap/api/mapcore/util/j2;

    .line 34
    :cond_b
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    if-eqz v1, :cond_c

    .line 35
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/l2;->c(Lcom/amap/api/mapcore/util/l2$a;)V

    .line 36
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/l2;->b()V

    .line 37
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    .line 38
    :cond_c
    invoke-static {}, Lcom/amap/api/mapcore/util/b3;->g()V

    .line 39
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/base/amap/mapcore/interfaces/IAMapListener;)V

    .line 41
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->releaseNetworkState()V

    .line 42
    new-instance v1, Lcom/amap/api/mapcore/util/c1$z;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$z;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    const/16 v2, 0x32

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_d

    add-int/lit8 v3, v1, 0x1

    if-ge v1, v2, :cond_d

    const-wide/16 v4, 0x14

    .line 44
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_1
    move v1, v3

    goto :goto_0

    .line 46
    :cond_d
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    if-eqz v1, :cond_e

    .line 47
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z9;->g()V

    .line 48
    :cond_e
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v1, :cond_f

    .line 49
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->r()V

    .line 50
    :cond_f
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_10

    .line 51
    :try_start_3
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->onDetachedGLThread()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 52
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 54
    :cond_10
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v1, :cond_11

    .line 55
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/e4;->P()V

    .line 56
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    .line 57
    :cond_11
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v1, :cond_12

    .line 58
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x1;->n()V

    .line 59
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    .line 60
    :cond_12
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    .line 61
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->D0()V

    .line 62
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 63
    invoke-static {}, Lcom/amap/api/mapcore/util/e6;->m()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "destroy"

    .line 64
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public destroySurface(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->V0:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz p1, :cond_5

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/da;->f()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/h2;->c()V

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_3

    .line 10
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->removeAll(Z)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->destroyAMapEngine()V

    .line 13
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    .line 14
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p1, v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/z9;->h()V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s8;->b()V

    :cond_5
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    .line 19
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    .line 20
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->U0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->V0:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->V0:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    throw p1
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p1, 0x4100

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->k(ILjavax/microedition/khronos/opengles/GL10;)V

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->renderAMap()V

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->u0:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/b0;->a()V

    .line 12
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->w(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 13
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->t0()V

    .line 14
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->T0:Z

    if-nez p1, :cond_5

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->T0:Z

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->popRendererState()V

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->D0:Lcom/amap/api/mapcore/util/a5;

    if-eqz p1, :cond_6

    .line 18
    new-instance v0, Lcom/amap/api/mapcore/util/ga;

    const/16 v1, 0x99

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ga;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/a5;->b(Lcom/amap/api/mapcore/util/ga;)V

    .line 19
    :cond_6
    invoke-static {}, Lcom/amap/api/mapcore/util/i3;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    instance-of p1, p1, Lcom/amap/api/mapcore/util/a4;

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    if-nez p1, :cond_7

    .line 22
    new-instance p1, Lcom/amap/api/mapcore/util/i3;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/i3;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/i3;->i()V

    .line 24
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/i3;->j()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/i3;->h()Z

    move-result p1

    if-nez p1, :cond_9

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    check-cast p1, Lcom/amap/api/mapcore/util/a4;

    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i3;->c(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    invoke-static {}, Lcom/amap/api/mapcore/util/i3;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->removecache()V

    .line 29
    :cond_8
    invoke-static {}, Lcom/amap/api/mapcore/util/i3;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->B0:Lcom/amap/api/mapcore/util/i3;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/i3;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "PureScreenCheckTool.checkBlackScreen"

    .line 31
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public f(IIII)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getLabelBuffer(IIII)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result p3

    const/4 p4, 0x1

    if-lt p3, p4, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    :goto_1
    if-ge v3, p3, :cond_8

    .line 5
    new-instance v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;

    invoke-direct {v5}, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;-><init>()V

    .line 6
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    add-int/2addr v4, v2

    .line 7
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v7

    add-int/2addr v4, v2

    .line 8
    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->x:I

    .line 9
    iget-object v6, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->y:I

    .line 10
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    add-int/2addr v4, v2

    .line 11
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    add-int/2addr v4, v2

    .line 12
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->pixel20Z:I

    add-int/2addr v4, v2

    .line 13
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->type:I

    add-int/2addr v4, v2

    .line 14
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->mSublayerId:I

    add-int/2addr v4, v2

    .line 15
    invoke-static {p1, v4}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v6

    iput v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->timeStamp:I

    add-int/2addr v4, v2

    .line 16
    aget-byte v6, p1, v4

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->mIsFouces:Z

    add-int/lit8 v4, v4, 0x1

    .line 17
    aget-byte v6, p1, v4

    if-nez v6, :cond_4

    .line 18
    iput-object v1, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const-string v6, ""

    const/4 v7, 0x0

    :goto_3
    const/16 v8, 0x14

    if-ge v7, v8, :cond_6

    add-int v8, v7, v4

    .line 19
    aget-byte v9, p1, v8

    if-nez v9, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, p1, v8

    int-to-char v6, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 21
    :cond_6
    :goto_4
    iput-object v6, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    :goto_5
    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v6, v4, 0x1

    .line 22
    aget-byte v4, p1, v4

    .line 23
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_7

    .line 24
    invoke-static {p1, v6}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getShort([BI)S

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 25
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method protected f0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/e4;->M(Ljava/lang/Boolean;)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/e4;->z()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->x()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/e4;->M(Ljava/lang/Boolean;)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/e4;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->s0:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->p0()V

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->s0:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCurTileIds()[I

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getCurTileIDs(I[I)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getViewMatrix([F)V

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->updateFinalMatrix()V

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    .line 10
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-wide v5, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    .line 11
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-wide v5, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    .line 12
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    .line 13
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    .line 14
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapAngle()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    .line 15
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 16
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->getSkyHeight()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSkyHeight(F)V

    .line 17
    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const/16 v0, 0x14

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v10, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 19
    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 20
    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v6

    invoke-direct {v2, v10, v4, v5, v6}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 21
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0xa

    .line 23
    iput v4, v0, Landroid/os/Message;->what:I

    .line 24
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/c1;->P0:Z

    .line 27
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->redrawInfoWindow()V

    .line 28
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->p0()V

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 32
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v4

    invoke-interface {v2, v4}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/c1;->x(Z)V

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 36
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 38
    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 39
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-interface {v2}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateCompassView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 42
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateScaleView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 45
    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->onChangeFinish()V

    :cond_8
    :goto_4
    return-void
.end method

.method public geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 3

    int-to-long v0, p1

    int-to-long p1, p2

    const/16 v2, 0x14

    .line 1
    invoke-static {v0, v1, p1, p2, v2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 2
    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v0, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 3
    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v0, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-void
.end method

.method public geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 4

    int-to-double v0, p1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/PointF;->x:F

    int-to-double p1, p2

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    sub-double/2addr p1, v0

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    return-object v0
.end method

.method public getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->G:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F:Lcom/amap/api/maps/UiSettings;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F:Lcom/amap/api/maps/UiSettings;

    return-object v0
.end method

.method public getBaseOverlayTextureID()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->getCameraDegree(I)F

    move-result v0

    return v0
.end method

.method public getCameraDegree(I)F
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->getCameraPositionPrj(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPositionPrj(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 5
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->h0()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 8
    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 9
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 10
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 11
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/mapcore/util/c1;->geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 14
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 15
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 16
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 17
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 18
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWorldVectorMapStyle()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v1, :cond_0

    const-string v2, "getCurMapStyleKey"

    .line 2
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/s8;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getDottedLineTextureID(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/da;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getFinalMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMvpMatrix()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->B1:[F

    return-object v0
.end method

.method public getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    return-object v0
.end method

.method public getGLMapView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGLShader(I)Lcom/amap/api/mapcore/util/g2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h2;->b(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object p1

    return-object p1
.end method

.method public getGLShaderManager()Lcom/amap/api/mapcore/util/h2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a1:Lcom/amap/api/mapcore/util/h2;

    return-object v0
.end method

.method public getGeoCenter(ILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public getGlOverlayMgrPtr()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getGlOverlayMgrPtr(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E:Lcom/amap/api/mapcore/util/d2;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore/util/c1;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3
    iget p1, v6, Landroid/graphics/Point;->x:I

    iget p2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2, p5}, Lcom/amap/api/mapcore/util/c1;->geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 4
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 2
    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object p2

    .line 4
    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p3, p4, p2}, Lcom/amap/api/mapcore/util/c1;->j(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    const/16 p3, -0x2710

    .line 5
    iget p4, p2, Landroid/graphics/PointF;->x:F

    int-to-float p3, p3

    cmpl-float p4, p4, p3

    if-nez p4, :cond_0

    iget p4, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p3, p4, p3

    if-nez p3, :cond_0

    .line 6
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/amap/api/mapcore/IGLMapState;

    move-result-object p3

    check-cast p3, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p3, p4}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 8
    invoke-virtual {p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    .line 9
    iget p4, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p4, p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 10
    invoke-virtual {p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    .line 11
    :cond_0
    iget p1, p2, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Point;->x:I

    .line 12
    iget p1, p2, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Point;->y:I

    .line 13
    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getLatLngRect([Lcom/autonavi/amap/mapcore/DPoint;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    aget-object v5, p1, v2

    invoke-static {v3, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public getLineTextureID()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLineTextureRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b1:Lcom/amap/api/mapcore/util/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->d()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLogoMarginRate(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->a(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLogoPosition()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->getLogoPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "getLogoPosition"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    return-object v0
.end method

.method public getMapAngle(I)F
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMapBounds(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v8

    if-lez v7, :cond_2

    if-lez v8, :cond_2

    .line 3
    iget-boolean v1, v6, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, v6, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    move/from16 v2, p2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/r3;->f(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;F)F

    move-result v9

    .line 5
    new-instance v10, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 v1, 0x1

    iget-object v2, v6, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {v10, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    .line 7
    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore/util/c1;->latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move/from16 v0, p4

    .line 8
    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setCameraDegree(F)V

    move/from16 v0, p3

    .line 9
    invoke-virtual {v10, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapAngle(F)V

    .line 10
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    .line 11
    invoke-virtual {v10, v9}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 12
    invoke-virtual {v10}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    .line 13
    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 14
    :cond_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v6, v10, v1, v1, v0}, Lcom/amap/api/mapcore/util/c1;->s(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 16
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v14, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 17
    invoke-virtual {v6, v10, v7, v8, v0}, Lcom/amap/api/mapcore/util/c1;->s(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 18
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v7

    invoke-direct/range {v17 .. v22}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 19
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 20
    invoke-virtual {v10}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    .line 21
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    return-object v0
.end method

.method public getMapContentApprovalNumber()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->l(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    const-string v1, "approval_number"

    const-string v2, "mc"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "GS\uff082017\uff093426\u53f7 |\u00a0GS\uff082017\uff092550\u53f7"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->J0:I

    return v0
.end method

.method public getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->A:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->j0:Z

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/r3;->a0(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Z)[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/r3;->l0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->B:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->j0:Z

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getMapTextZIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    return v0
.end method

.method public getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->I0:I

    return v0
.end method

.method public getMapZoomScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    return v0
.end method

.method public getMaskLayerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->w0:I

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a6;->b:Landroid/location/Location;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeMapController()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeMapController(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnCameraChangeListener()Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    .line 5
    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-long p1, p1

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-long v2, v0

    const/16 v0, 0x14

    invoke-static {p1, p2, v2, v3, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 6
    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 7
    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v2, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 8
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public getPreciseLevel(I)F
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getProjection()Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->G:Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D1:[F

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->l0:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getSX()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSY()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSatelliteImageApprovalNumber()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->m(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    const-string v1, "approval_number"

    const-string v2, "si"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "GS\uff082018\uff09984\u53f7"

    return-object v0
.end method

.method public getScalePerPixel()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getZoomLevel()F

    move-result v1

    .line 3
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    float-to-double v0, v1

    .line 4
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    div-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapZoomScale()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float v0, v0, v1

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "getScalePerPixel"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getSkyHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSkyHeight()F

    move-result v0

    return v0
.end method

.method public getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/c1;->getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;

    move-result-object p1

    return-object p1
.end method

.method public getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/ha;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getBaseOverlayTextureID()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ha;->t()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    monitor-exit v1

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    return-object v0
.end method

.method public getUnitLengthByZoom(I)F
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/base/ae/gmap/GLMapState;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    int-to-float p1, p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    .line 4
    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result p1

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getViewMatrix()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C1:[F

    return-object v0
.end method

.method public getWaterMarkerPositon()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->b()Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public getWorldVectorMapLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u1:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldVectorMapStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v1:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->b(I)F

    move-result v0

    return v0
.end method

.method public getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 5
    invoke-virtual {v1, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 6
    new-instance p1, Lcom/autonavi/base/ae/gmap/GLMapState;

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getNativeInstance()J

    move-result-wide v2

    invoke-direct {p1, p2, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;-><init>(IJ)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getMapHeight()I

    move-result v7

    move v1, p2

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/r3;->t(Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->recycle()V

    if-eqz p2, :cond_0

    .line 10
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p1

    return p1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public h(IIIIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setServiceViewRect(IIIIIII)V

    :cond_0
    return-void
.end method

.method public hideInfoWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->z()V

    :cond_0
    return-void
.end method

.method public declared-synchronized i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    .locals 12

    move-object v10, p0

    move v0, p3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v1, v10, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v10, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v10, Lcom/amap/api/mapcore/util/c1;->I:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/amap/api/mapcore/util/c1;->f0(I)V

    .line 3
    new-instance v11, Lcom/amap/api/mapcore/util/c1$e;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore/util/c1$e;-><init>(Lcom/amap/api/mapcore/util/c1;IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    invoke-virtual {p0, v11}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v10, Lcom/amap/api/mapcore/util/c1;->i1:Lcom/amap/api/mapcore/util/c1$m0;

    move v2, p1

    iput v2, v1, Lcom/amap/api/mapcore/util/c1$m0;->f:I

    move v2, p2

    .line 5
    iput v2, v1, Lcom/amap/api/mapcore/util/c1$m0;->c:I

    .line 6
    iput v0, v1, Lcom/amap/api/mapcore/util/c1$m0;->d:I

    move/from16 v0, p4

    .line 7
    iput v0, v1, Lcom/amap/api/mapcore/util/c1$m0;->e:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, v1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIndoorEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    return v0
.end method

.method public isInfoWindowShown(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s;->A()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLockMapAngle(I)Z
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/c1;->B(II)Z

    move-result p1

    return p1
.end method

.method public isLockMapCameraDegree(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMaploaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Y:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Q:Z

    return v0
.end method

.method public isTouchPoiEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public isUseAnchor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    return v0
.end method

.method public j(IILcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    :cond_0
    return-void
.end method

.method public j0(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/c1$f;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$f;-><init>(Lcom/amap/api/mapcore/util/c1;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/util/c1$g;-><init>(Lcom/amap/api/mapcore/util/c1;IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->k1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 6
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I

    :goto_0
    return-void
.end method

.method public latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    iput p2, p5, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p5, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public loadWorldVectorMap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAbroadEnable(Z)V

    :cond_0
    return-void
.end method

.method public map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    float-to-double v0, p1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p3, Landroid/graphics/Point;->x:I

    float-to-double p1, p2

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v0

    add-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    invoke-static {}, Lcom/amap/api/mapcore/util/h;->o()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 8
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 9
    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    iput-object v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->geoPoint:Lcom/autonavi/amap/mapcore/DPoint;

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->zoom:F

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bearing:F

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->tilt:F

    .line 13
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V

    .line 14
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    .line 16
    invoke-virtual {v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessage()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    .line 21
    iput-boolean v2, p1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->isChangeFinished:Z

    .line 22
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->r(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public n0(I)V
    .locals 14

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x4

    goto :goto_3

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x5

    goto :goto_3

    .line 2
    :cond_4
    :try_start_0
    iput v3, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    goto :goto_0

    .line 3
    :goto_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleMode(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v9}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleTime(I)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v10}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapStyleState(I)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/b0;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/b0;->k()V

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    .line 9
    invoke-virtual/range {v6 .. v13}, Lcom/amap/api/mapcore/util/c1;->i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 11
    :goto_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {p1, v3}, Lcom/amap/api/mapcore/util/c;->setLogoEnable(Z)V

    goto :goto_5

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "zh_cn"

    .line 13
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->setMapLanguage(Ljava/lang/String;)V

    .line 14
    :cond_7
    invoke-virtual {p0, v3, v8, v9, v10}, Lcom/amap/api/mapcore/util/c1;->L(IIII)V

    .line 15
    :goto_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setMaptype"

    .line 16
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->V(I)V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/c1;->R:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/c1;->b0(I)V

    return-void
.end method

.method public onChangeFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDoubleTap(ILandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/amap/api/mapcore/util/c1;->C(III)Z

    return v1
.end method

.method public onFling()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ab;->h(Z)V

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->i0:Z

    return-void
.end method

.method public onIndoorBuildingActivity(I[B)V
    .locals 7

    const-string p1, "utf-8"

    if-eqz p2, :cond_3

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/q;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/q;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget-byte v2, p2, v1

    .line 3
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x1

    .line 4
    aget-byte v3, p2, v4

    .line 5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget-byte v2, p2, v2

    .line 7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    add-int/2addr v3, v2

    .line 8
    invoke-static {p2, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    iput v2, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v3, 0x1

    .line 9
    aget-byte v3, p2, v3

    .line 10
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    .line 11
    aget-byte v2, p2, v2

    .line 12
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v3, v2

    .line 13
    invoke-static {p2, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    iput v2, v0, Lcom/amap/api/mapcore/util/q;->a:I

    add-int/lit8 v3, v3, 0x4

    .line 14
    new-array v4, v2, [I

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    .line 15
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    .line 16
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/mapcore/util/q;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 17
    :goto_0
    iget v4, v0, Lcom/amap/api/mapcore/util/q;->a:I

    if-ge v2, v4, :cond_2

    .line 18
    iget-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    invoke-static {p2, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v3, 0x1

    .line 19
    aget-byte v3, p2, v3

    if-lez v3, :cond_0

    .line 20
    iget-object v5, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v4, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v2

    add-int/2addr v4, v3

    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 21
    aget-byte v4, p2, v4

    if-lez v4, :cond_1

    .line 22
    iget-object v5, v0, Lcom/amap/api/mapcore/util/q;->b:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v2

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p2, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result p1

    iput p1, v0, Lcom/amap/api/mapcore/util/q;->c:I

    add-int/lit8 v3, v3, 0x4

    if-lez p1, :cond_4

    .line 24
    new-array p1, p1, [I

    iput-object p1, v0, Lcom/amap/api/mapcore/util/q;->d:[I

    .line 25
    :goto_1
    iget p1, v0, Lcom/amap/api/mapcore/util/q;->c:I

    if-ge v1, p1, :cond_4

    .line 26
    iget-object p1, v0, Lcom/amap/api/mapcore/util/q;->d:[I

    invoke-static {p2, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 27
    :cond_4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->A1:Lcom/amap/api/mapcore/util/q;

    .line 28
    new-instance p1, Lcom/amap/api/mapcore/util/c1$x;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c1$x;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onLongPress(ILandroid/view/MotionEvent;)V
    .locals 12

    const-string v0, "AMapDelegateImp"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/c1;->f0:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->K(I)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/u;->c(Landroid/view/MotionEvent;)Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/amap/api/maps/model/Marker;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast p2, Lcom/amap/api/mapcore/util/w1;

    invoke-direct {p1, p2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 8
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    .line 9
    iget-wide v4, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v3, p0

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore/util/c1;->getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget v3, v9, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x3c

    iput v3, v9, Landroid/graphics/Point;->y:I

    .line 11
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    .line 12
    iget v4, v9, Landroid/graphics/Point;->x:I

    iget v5, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4, v5, v3}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 13
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v5, v7

    iget-wide v7, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    iget-wide v7, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v7, v10

    iget-wide p1, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v7, p1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v4}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->e0:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast p2, Lcom/amap/api/mapcore/util/w1;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/u;->m(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->d0:Lcom/amap/api/maps/model/Marker;

    invoke-interface {p1, p2}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "onMarkerDragStart"

    .line 19
    invoke-static {p1, v0, p2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->c0:Z

    .line 22
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 23
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_2

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 25
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v3, p2, p1}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 27
    :goto_1
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 28
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p2, v3}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/c1;->g0:Z

    .line 30
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 31
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    const-string p2, "onLongPress"

    .line 32
    invoke-static {p1, v0, p2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->e0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->l()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSingleTapConfirmed(ILandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->K(I)V

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c1;->o0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c1;->g0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c1;->k0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c1;->c0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    .line 7
    :cond_4
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c1;->N(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImp"

    const-string v1, "onSingleTapUp"

    .line 8
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->N0:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w1:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x3

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/16 v2, 0x8

    .line 3
    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v4, 0x1

    aput v1, v3, v4

    iput-object v3, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w1:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->J()V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->u0(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->U()V

    .line 10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c1;->q0(I)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->c0:Z

    if-eqz v0, :cond_3

    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->m(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "onDragMarker"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v4

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->H0:Z

    if-eqz v0, :cond_4

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/aa;->e(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_4
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 21
    iput v1, v0, Landroid/os/Message;->what:I

    .line 22
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_5
    return v4

    :cond_6
    :goto_3
    return v1
.end method

.method public pixel2Map(IILandroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/c1;->getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v1

    double-to-float p2, v1

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/PointF;->x:F

    .line 5
    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v1

    double-to-float p2, v1

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/PointF;->y:F

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const-string v0, "AMapdelegateImp"

    const-string v1, "queueEvent"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public redrawInfoWindow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public refreshLogo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->z()V

    :cond_0
    return-void
.end method

.method public reloadMap()V
    .locals 0

    return-void
.end method

.method public reloadMapCustomStyle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b0;->f()V

    :cond_0
    return-void
.end method

.method public removeEngineGLOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getOverlayBundle(I)Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;->removeOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V

    :cond_0
    return-void
.end method

.method public removeGLModel(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->T:Lcom/amap/api/mapcore/util/z9;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z9;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "removeGLModel"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeGLOverlay(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->P:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/r;->removeOverlay(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeMarker(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->d(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->O:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u;->p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "removeMarker"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->x:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->r:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->w:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->u:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->o:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->q:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->P(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeTextureItem(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore/util/ha;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->y0:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removecache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/c1$p0;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/amap/api/mapcore/util/c1$p0;-><init>(Lcom/amap/api/mapcore/util/c1;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "removecache"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public renderSurface(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public resetRenderTime()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public resetRenderTimeLongLong()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->F0:Lcom/autonavi/base/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method protected s(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->screenToP20Point(IILandroid/graphics/Point;)V

    .line 4
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-long p1, p1

    iget p3, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, p3

    const/16 p3, 0x14

    invoke-static {p1, p2, v0, v1, p3}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->pixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 5
    iget-wide p2, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide p2, p4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 6
    iget-wide p2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide p2, p4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public set3DBuildingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->V(I)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->l(IZ)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->b0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->G0:Lcom/amap/api/mapcore/util/aa;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->C:Lcom/amap/api/maps/model/AMapGestureListener;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/aa;->d(Lcom/amap/api/maps/model/AMapGestureListener;)V

    :cond_0
    return-void
.end method

.method public setCenterToPixel(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->X:Z

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->X0:I

    .line 3
    iput p2, p0, Lcom/amap/api/mapcore/util/c1;->Y0:I

    .line 4
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result p1

    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->X0:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result p1

    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->Y0:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->X0:I

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/mapcore/util/c1;->Y0:I

    invoke-virtual {p1, p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    .line 8
    new-instance p1, Lcom/amap/api/mapcore/util/c1$t;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c1$t;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setCustomMapStyle(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->z0()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b0;->h()V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d1:Lcom/amap/api/mapcore/util/b0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/b0;->c(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v0, :cond_2

    const-string v1, "setCustomMapStyle"

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore/util/s8;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCustomMapStyle(Z[B)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/c1;->z(Z[BZ)V

    return-void
.end method

.method public setCustomMapStyleID(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleID(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->J:Z

    :cond_0
    return-void
.end method

.method public setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->J:Z

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->u0:Lcom/amap/api/maps/CustomRenderer;

    return-void
.end method

.method public setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomTextureResourcePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGestureStatus(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->W0:I

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p0, Lcom/amap/api/mapcore/util/c1;->W0:I

    return-void
.end method

.method public setHideLogoEnble(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setHideLogoEnble(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c;->setLogoEnable(Z)V

    :cond_0
    return-void
.end method

.method public setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore/util/q;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/c1$u;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c1$u;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setIndoorEnable(IZ)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    iput v1, v0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :catchall_0
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/p3;->k(Landroid/content/Context;Z)V

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/c1$n;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/c1$n;-><init>(Lcom/amap/api/mapcore/util/c1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->p1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    .line 17
    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 18
    iput v1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/s;->g(Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;)V

    :cond_1
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/s;->h(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    :cond_1
    return-void
.end method

.method public setLoadOfflineData(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/c1$o;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$o;-><init>(Lcom/amap/api/mapcore/util/c1;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amap/api/mapcore/util/t;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/e4;->O(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/e4;->O(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setLocationSource"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLogoBottomMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->B(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setLogoLeftMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->F(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setLogoMarginRate(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/e4;->r(Ljava/lang/Integer;Ljava/lang/Float;)V

    :cond_0
    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->w(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setMapCustomEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->z0()V

    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/c1;->setMapCustomEnable(ZZ)V

    return-void
.end method

.method public setMapCustomEnable(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 3
    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->z0:Lcom/amap/api/mapcore/util/j2;

    if-eqz v2, :cond_2

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/j2;->b(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1;->z0:Lcom/amap/api/mapcore/util/j2;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/j2;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 8
    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/c1;->J:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p2

    xor-int/2addr p2, p1

    if-eqz p2, :cond_4

    :cond_3
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v1}, Lcom/amap/api/mapcore/util/c1;->z(Z[BZ)V

    .line 10
    :cond_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 11
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 13
    :cond_5
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->j1:Lcom/amap/api/mapcore/util/c1$m0;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 14
    iput-boolean p1, p2, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    :goto_3
    return-void
.end method

.method public setMapEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapEnable(Z)V

    :cond_0
    return-void
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "en"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const-string v0, "zh_cn"

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    goto :goto_1

    .line 7
    :cond_3
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    if-eq p1, v0, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->setMapType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/16 p1, -0x2710

    .line 12
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    .line 13
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1;->q(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->N:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-nez v0, :cond_5

    .line 16
    new-instance v0, Lcom/amap/api/mapcore/util/ab;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/ab;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    .line 17
    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->M:Lcom/amap/api/mapcore/util/ab;

    if-eqz p1, :cond_6

    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/ab;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 20
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1;->B0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMapTextEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$p;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$p;-><init>(Lcom/amap/api/mapcore/util/c1;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->l1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 6
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMapTextZIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->t0:I

    return-void
.end method

.method public setMapType(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D0:Lcom/amap/api/mapcore/util/a5;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/ga;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/ga;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a5;->b(Lcom/amap/api/mapcore/util/ga;)V

    .line 5
    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->m0:I

    return-void
.end method

.method public setMapWidgetListener(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n:Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->O(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->n:Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->t(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setMaskLayerParams(IIIIIJ)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v0:Lcom/amap/api/mapcore/util/fa;

    if-eqz v0, :cond_3

    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p5, v1, :cond_0

    .line 2
    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v0, v2}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$w;

    invoke-direct {v0, p0, p5}, Lcom/amap/api/mapcore/util/c1$w;-><init>(Lcom/amap/api/mapcore/util/c1;I)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p5, p0, Lcom/amap/api/mapcore/util/c1;->w0:I

    .line 6
    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    const p5, 0x3e4ccccd    # 0.2f

    cmpl-float p5, v0, p5

    if-lez p5, :cond_1

    .line 7
    iget-object p5, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz p5, :cond_2

    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p5, v0}, Lcom/amap/api/mapcore/util/e4;->S(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p5, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz p5, :cond_2

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p5, v0}, Lcom/amap/api/mapcore/util/e4;->S(Ljava/lang/Boolean;)V

    .line 11
    :cond_2
    :goto_0
    new-instance p5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {v1, p6, p7}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    .line 13
    iget-object p5, p0, Lcom/amap/api/mapcore/util/c1;->v0:Lcom/amap/api/mapcore/util/fa;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/fa;->a(IIII)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->v0:Lcom/amap/api/mapcore/util/fa;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/fa;->b(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxZoomLevel(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->J()Lcom/amap/api/mapcore/util/d4;

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->m:Lcom/amap/api/mapcore/util/a6;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/e4;->O(Ljava/lang/Boolean;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Lcom/amap/api/mapcore/util/x1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/x1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->n()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/e4;->O(Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c;->setMyLocationButtonEnabled(Z)V

    .line 15
    :cond_5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->Q:Z

    .line 16
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setMyLocationEnabled"

    .line 17
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/x1;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/x1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/x1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    :cond_1
    const/16 v0, 0x3e8

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 6
    invoke-virtual {p1, v3, v4}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/amap/api/mapcore/util/t;

    if-eqz v1, :cond_3

    .line 8
    check-cast v0, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/t;->b(J)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/t;->a(I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/x1;->h(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMyLocationType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x1;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/x1;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/c1$s;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c1$s;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->s1:Lcom/amap/api/mapcore/util/c1$m0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 8
    iput v0, p1, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setNaviLabelEnable(ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$r;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/c1$r;-><init>(Lcom/amap/api/mapcore/util/c1;ZII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    .line 5
    iput p2, v0, Lcom/amap/api/mapcore/util/c1$m0;->g:I

    .line 6
    iput p3, v0, Lcom/amap/api/mapcore/util/c1$m0;->h:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 8
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->e:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->e:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    return-void
.end method

.method public setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->k:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->k:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->j:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->j:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V

    return-void
.end method

.method public setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f:Lcom/amap/api/maps/AMap$OnMapClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->f:Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->i:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->i:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V

    return-void
.end method

.method public setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->g:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->g:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V

    return-void
.end method

.method public setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->d:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->d:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->c:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V

    return-void
.end method

.method public setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->c1:Lcom/amap/api/mapcore/util/z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z;->e(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->l:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->l:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->h:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->h:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V

    return-void
.end method

.method public setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->removeOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->b:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->addOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V

    return-void
.end method

.method public setRenderFps(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x28

    .line 2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/p3;->n(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setRenderMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setRoadArrowEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/c1$q;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/c1$q;-><init>(Lcom/amap/api/mapcore/util/c1;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->m1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 6
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setRunLowFrame(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    :try_start_0
    iget p1, p0, Lcom/amap/api/mapcore/util/c1;->x0:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTouchPoiEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setTouchPoiEnable(Z)V

    :cond_0
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/c1$l;

    invoke-direct {v0, p0, p1, p1}, Lcom/amap/api/mapcore/util/c1$l;-><init>(Lcom/amap/api/mapcore/util/c1;ZZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c1;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->g1:Lcom/amap/api/mapcore/util/c1$m0;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 5
    iput p1, v0, Lcom/amap/api/mapcore/util/c1$m0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setVisibilityEx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setWorldVectorMapStyle(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->v1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->v1:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->t1:Lcom/amap/api/mapcore/util/s8;

    if-eqz v0, :cond_1

    const-string v1, "setWorldVectorMapStyle"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore/util/s8;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->q(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setZoomScaleParam(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c1;->L0:F

    return-void
.end method

.method public showCompassEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->E(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public showIndoorSwitchControlsEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->o(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->D:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/s;->i(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLogoEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->K(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public showMyLocationButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->A(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public showMyLocationOverlay(Landroid/location/Location;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->Q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->b0:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/x1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/x1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/x1;->e(Landroid/location/Location;)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/x1;->n()V

    :cond_6
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1;->a0:Lcom/amap/api/mapcore/util/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "showMyLocationOverlay"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public showScaleEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->I(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public showZoomControlsEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->L:Lcom/amap/api/mapcore/util/e4;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/e4;->v(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->interruptAnimation()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public t(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->U:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/c1;->v(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public toMapLenWithWin(I)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method x(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected y(ZLcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/c1;->O0:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->C:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->K:Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;->isEnabled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "AMapDelegateImp"

    const-string v1, "cameraChangeFinish"

    .line 8
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :cond_4
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 11
    invoke-interface {v0, p2}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 12
    :catchall_1
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->resetChangedCounter()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public z(Z[BZ)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->H:Lcom/amap/api/mapcore/util/c;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/c;->setLogoEnable(Z)V

    :cond_1
    if-eqz p1, :cond_9

    .line 4
    invoke-virtual {p0, v2, v2}, Lcom/amap/api/mapcore/util/c1;->W(IZ)V

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/p2;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/p2;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getTrafficRoadBackgroundColor()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->n0:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getTrafficRoadBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/p2;->i(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomTextureResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p1, p2, v1}, Lcom/amap/api/mapcore/util/p2;->e([BZ)Lcom/amap/api/mapcore/util/q2;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/q2;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    goto :goto_1

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 13
    iget-object p2, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/amap/api/mapcore/util/p2;->d(Ljava/lang/String;Z)Lcom/amap/api/mapcore/util/q2;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/q2;->c()[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    move-result-object v0

    .line 15
    :cond_6
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/p2;->a()I

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/p2;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomBackgroundColor(I)V

    :cond_7
    if-eqz p2, :cond_8

    .line 17
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/q2;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    if-eqz p1, :cond_a

    .line 19
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/q2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    iget-object p3, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    invoke-virtual {p3, p1}, Lcom/amap/api/mapcore/util/l2;->e(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/l2;->d(Lcom/amap/api/mapcore/util/q2;)V

    .line 22
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->A0:Lcom/amap/api/mapcore/util/l2;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/l2;->g()V

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/amap/api/mapcore/util/c1;->A([Lcom/autonavi/base/ae/gmap/style/StyleItem;Z)V

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/mapcore/util/c1;->W(IZ)V

    const/4 v1, 0x1

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v2

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v3

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/c1;->i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public zoomOut(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1;->R0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->b(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/h;->l()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c1;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "onDoubleTap"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V

    :cond_1
    return-void
.end method
