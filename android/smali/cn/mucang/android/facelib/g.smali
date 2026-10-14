.class public final synthetic Lcn/mucang/android/facelib/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/facelib/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/facelib/g;

    invoke-direct {v0}, Lcn/mucang/android/facelib/g;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/g;->a:Lcn/mucang/android/facelib/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    invoke-static {p1}, Lcn/mucang/android/facelib/q;->c(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)V

    return-void
.end method
