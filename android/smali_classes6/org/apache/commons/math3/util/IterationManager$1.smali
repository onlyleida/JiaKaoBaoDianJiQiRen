.class Lorg/apache/commons/math3/util/IterationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/IterationManager;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager$1;->val$callBack:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager$1;->val$callBack:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;->trigger(I)V

    return-void
.end method
