.class public Lcom/mobile/auth/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/g/a$b;
    }
.end annotation


# direct methods
.method static a()I
    .locals 1

    invoke-static {}, Lcom/mobile/auth/g/a;->b()Lcom/mobile/auth/g/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/g/a;->a(Lcom/mobile/auth/g/a$b;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/mobile/auth/g/a$b;)I
    .locals 2

    sget-object v0, Lcom/mobile/auth/g/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b()Lcom/mobile/auth/g/a$b;
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/mobile/auth/g/a$b;->b:Lcom/mobile/auth/g/a$b;

    return-object v0

    :cond_0
    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mobile/auth/g/a$b;->c:Lcom/mobile/auth/g/a$b;

    return-object v0

    :cond_1
    sget-object v0, Lcom/mobile/auth/g/a$b;->a:Lcom/mobile/auth/g/a$b;

    return-object v0
.end method
