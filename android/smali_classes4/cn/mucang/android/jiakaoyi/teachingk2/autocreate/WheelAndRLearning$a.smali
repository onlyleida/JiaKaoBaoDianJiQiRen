.class Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:D

.field c:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->a:I

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->b:D

    .line 4
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->c:D

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->b:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->b:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->c:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->c:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
