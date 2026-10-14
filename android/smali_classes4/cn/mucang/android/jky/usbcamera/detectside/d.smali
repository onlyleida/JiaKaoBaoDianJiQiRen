.class public final synthetic Lcn/mucang/android/jky/usbcamera/detectside/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/d;

    invoke-direct {v0}, Lcn/mucang/android/jky/usbcamera/detectside/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/d;->a:Lcn/mucang/android/jky/usbcamera/detectside/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/mucang/android/jky/usbcamera/detectside/q;

    check-cast p2, Lcn/mucang/android/jky/usbcamera/detectside/q;

    invoke-static {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;->e(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;)I

    move-result p1

    return p1
.end method
