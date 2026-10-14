.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/m0;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->t(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I

    move-result p1

    return p1
.end method
