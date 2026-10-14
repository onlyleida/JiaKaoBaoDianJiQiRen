.class Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public effectiveParameters:[Ljava/lang/Object;

.field public formalParameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public fullClassName:Ljava/lang/String;

.field public funcName:Ljava/lang/String;

.field public instance:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->formalParameters:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->effectiveParameters:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->instance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->fullClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", funcName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->funcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/player/BGMPlayer/ReflectionFuncCallContext;->effectiveParameters:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
