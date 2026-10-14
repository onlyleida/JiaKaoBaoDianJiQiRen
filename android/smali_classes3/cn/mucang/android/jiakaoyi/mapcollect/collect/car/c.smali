.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;

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

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
