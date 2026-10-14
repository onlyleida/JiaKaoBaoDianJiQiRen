.class Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;
.super Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyInfo"
.end annotation


# instance fields
.field final tmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;->tmList:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 6
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 7
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method
