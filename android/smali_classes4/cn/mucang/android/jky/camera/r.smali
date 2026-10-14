.class public final synthetic Lcn/mucang/android/jky/camera/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jky/camera/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jky/camera/r;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/r;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/r;->a:Lcn/mucang/android/jky/camera/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->r()V

    return-void
.end method
