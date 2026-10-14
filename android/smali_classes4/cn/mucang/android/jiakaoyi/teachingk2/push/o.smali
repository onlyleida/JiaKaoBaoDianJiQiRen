.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/o;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/o;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/o;

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

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->V(Ljava/lang/Throwable;)V

    return-void
.end method
