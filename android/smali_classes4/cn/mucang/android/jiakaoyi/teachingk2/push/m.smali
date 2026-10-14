.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/m;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->U()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
