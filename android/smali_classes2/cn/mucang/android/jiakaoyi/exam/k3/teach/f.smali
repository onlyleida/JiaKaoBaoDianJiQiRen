.class public final synthetic Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->b(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)I

    move-result p1

    return p1
.end method
