.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/c;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/e;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result p1

    return p1
.end method
