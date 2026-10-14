.class public Lcom/rscja/deviceapi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/rscja/deviceapi/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    const-string v2, ""

    .line 3
    sput-object v2, Lcom/rscja/deviceapi/a;->e:Ljava/lang/String;

    .line 4
    sput-object v2, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    .line 5
    sput-object v2, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    .line 6
    sput-object v2, Lcom/rscja/deviceapi/a;->h:Ljava/lang/String;

    const-string v2, "6018909"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CJ6008909"

    const-string v3, "/dev/ttyHSL0"

    const-string v4, "/dev/ttyHSL1"

    if-eqz v1, :cond_0

    .line 8
    sput-object v2, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    .line 9
    sput-object v3, Lcom/rscja/deviceapi/a;->e:Ljava/lang/String;

    .line 10
    sput-object v3, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    .line 11
    sput-object v4, Lcom/rscja/deviceapi/a;->h:Ljava/lang/String;

    .line 12
    sput-object v4, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    const-string v5, "6008909"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    sput-object v2, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    .line 15
    sput-object v4, Lcom/rscja/deviceapi/a;->e:Ljava/lang/String;

    .line 16
    sput-object v4, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    .line 17
    sput-object v4, Lcom/rscja/deviceapi/a;->h:Ljava/lang/String;

    .line 18
    sput-object v4, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_1
    sget-object v1, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    const-string v2, "V600S_8909"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CJ6008909_V600S"

    .line 20
    sput-object v1, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    .line 21
    sput-object v4, Lcom/rscja/deviceapi/a;->e:Ljava/lang/String;

    .line 22
    sput-object v3, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    .line 23
    sput-object v3, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    .line 24
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "111 uartPath_bd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/rscja/deviceapi/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uartPath_rfid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  uartPath_obd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  uartPath_finger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rscja/deviceapi/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/rscja/deviceapi/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/rscja/deviceapi/a;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/rscja/deviceapi/a;->c:I

    return-void
.end method

.method public static a()Lcom/rscja/deviceapi/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rscja/deviceapi/exception/ConfigurationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/a;

    invoke-static {}, Lcom/rscja/deviceapi/a;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rscja/deviceapi/a;->h:Ljava/lang/String;

    const v3, 0xe100

    invoke-direct {v0, v1, v2, v3}, Lcom/rscja/deviceapi/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b()Lcom/rscja/deviceapi/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rscja/deviceapi/exception/ConfigurationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/a;

    invoke-static {}, Lcom/rscja/deviceapi/a;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rscja/deviceapi/a;->f:Ljava/lang/String;

    const v3, 0x1c200

    invoke-direct {v0, v1, v2, v3}, Lcom/rscja/deviceapi/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c()Lcom/rscja/deviceapi/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rscja/deviceapi/exception/ConfigurationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rscja/deviceapi/a;

    invoke-static {}, Lcom/rscja/deviceapi/a;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rscja/deviceapi/a;->g:Ljava/lang/String;

    const/16 v3, 0x2580

    invoke-direct {v0, v1, v2, v3}, Lcom/rscja/deviceapi/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    const-string v1, "i760"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C4000"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getModel() model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/rscja/deviceapi/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rscja/deviceapi/a;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rscja/deviceapi/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rscja/deviceapi/a;->b:Ljava/lang/String;

    return-object v0
.end method
