.class Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:D

.field b:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->b:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    return-void
.end method
