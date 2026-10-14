.class public final synthetic Lcn/mucang/android/jky/camera/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jky/camera/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jky/camera/q;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/q;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/q;->a:Lcn/mucang/android/jky/camera/q;

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

    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->q()V

    return-void
.end method
