.class final Lj$/time/ZoneRegion;
.super Lj$/time/ZoneId;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Lj$/time/zone/ZoneRules;


# direct methods
.method constructor <init>(Ljava/lang/String;Lj$/time/zone/ZoneRules;)V
    .locals 0

    invoke-direct {p0}, Lj$/time/ZoneId;-><init>()V

    iput-object p1, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    iput-object p2, p0, Lj$/time/ZoneRegion;->rules:Lj$/time/zone/ZoneRules;

    return-void
.end method

.method static ofId(Ljava/lang/String;)Lj$/time/ZoneRegion;
    .locals 5

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid ID for region-based ZoneId, invalid format: "

    const/4 v2, 0x2

    if-lt v0, v2, :cond_a

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_7

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8

    if-eqz v2, :cond_8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x1

    .line 0
    :try_start_0
    invoke-static {p0, v0}, Lj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lj$/time/ZoneRegion;

    invoke-direct {v1, p0, v0}, Lj$/time/ZoneRegion;-><init>(Ljava/lang/String;Lj$/time/zone/ZoneRules;)V

    return-object v1

    :catch_0
    move-exception p0

    throw p0

    .line 0
    :cond_a
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getRules()Lj$/time/zone/ZoneRules;
    .locals 2

    iget-object v0, p0, Lj$/time/ZoneRegion;->rules:Lj$/time/zone/ZoneRules;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v0

    :goto_0
    return-object v0
.end method
