.class public Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Z

.field public i:F

.field public l:I

.field public st:I

.field public w:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;-><init>(Ljava/util/List;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->st:I

    return-void
.end method


# virtual methods
.method public setStyle(IIZFI)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->c:I

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->w:I

    .line 3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->d:Z

    .line 4
    iput p4, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->i:F

    .line 5
    iput p5, p0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->l:I

    return-void
.end method
