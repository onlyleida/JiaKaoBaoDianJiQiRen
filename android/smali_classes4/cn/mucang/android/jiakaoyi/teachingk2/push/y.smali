.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/y;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/y;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->d(Ljava/lang/Throwable;)V

    return-void
.end method
