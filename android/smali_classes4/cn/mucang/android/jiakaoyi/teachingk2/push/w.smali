.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/w;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/w;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/w;

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

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->h()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
