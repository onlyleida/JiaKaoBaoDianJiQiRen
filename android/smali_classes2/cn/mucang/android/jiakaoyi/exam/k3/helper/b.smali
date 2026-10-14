.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/a;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;->a:Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
