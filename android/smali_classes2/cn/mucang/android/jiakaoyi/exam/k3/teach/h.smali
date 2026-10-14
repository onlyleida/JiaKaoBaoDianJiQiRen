.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;-><init>()V

    return-object v0
.end method
