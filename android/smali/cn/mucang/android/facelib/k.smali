.class public final synthetic Lcn/mucang/android/facelib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# static fields
.field public static final synthetic a:Lcn/mucang/android/facelib/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/facelib/k;

    invoke-direct {v0}, Lcn/mucang/android/facelib/k;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/k;->a:Lcn/mucang/android/facelib/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/facelib/t;->i(Ljava/util/List;)V

    return-void
.end method
