.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->b:Ljava/util/List;

    .line 4
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-void
.end method
