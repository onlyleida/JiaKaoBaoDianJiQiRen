.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser$Creator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/z;

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/EngineHandler;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/EngineHandler;-><init>()V

    return-object v0
.end method
