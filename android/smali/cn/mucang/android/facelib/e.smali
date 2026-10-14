.class public final synthetic Lcn/mucang/android/facelib/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/facelib/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/facelib/e;

    invoke-direct {v0}, Lcn/mucang/android/facelib/e;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/e;->a:Lcn/mucang/android/facelib/e;

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

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->C()V

    return-void
.end method
