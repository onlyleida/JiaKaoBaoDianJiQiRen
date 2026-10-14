.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I

    move-result p1

    return p1
.end method
