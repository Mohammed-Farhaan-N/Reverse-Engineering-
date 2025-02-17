.class public final Lj$/time/LocalDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/chrono/ChronoLocalDateTime;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final date:Lj$/time/LocalDate;

.field private final time:Lj$/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/LocalTime;->MIN:Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    sget-object v0, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    sget-object v1, Lj$/time/LocalTime;->MAX:Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    return-void
.end method

.method private constructor <init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iput-object p2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    return-void
.end method

.method private compareTo0(Lj$/time/LocalDateTime;)I
    .locals 2

    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    iget-object v1, p1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    iget-object p1, p1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static of(I)Lj$/time/LocalDateTime;
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-static {}, Lj$/time/LocalTime;->of()Lj$/time/LocalTime;

    move-result-object v0

    new-instance v1, Lj$/time/LocalDateTime;

    invoke-direct {v1, p0, v0}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v1
.end method

.method public static of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object v0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "time"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "date"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;
    .locals 5

    if-eqz p3, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)V

    invoke-virtual {p3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    const-wide/32 p2, 0x15180

    invoke-static {p0, p1, p2, p3}, Lj$/util/function/Function$-CC;->m$3(JJ)J

    move-result-wide v3

    invoke-static {p0, p1, p2, p3}, Lj$/util/function/Function$-CC;->m$1(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {v3, v4}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object p0

    int-to-long p1, p1

    const-wide/32 v3, 0x3b9aca00

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object p1

    new-instance p2, Lj$/time/LocalDateTime;

    invoke-direct {p2, p0, p1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    return-object p2

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "offset"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/ZonedDateTime;->of(Lj$/time/LocalDateTime;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I
    .locals 2

    instance-of v0, p1, Lj$/time/LocalDateTime;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDateTime;

    invoke-direct {p0, p1}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result p1

    return p1

    .line 0
    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    check-cast p1, Lj$/time/LocalDateTime;

    .line 0
    iget-object v1, p1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-nez v0, :cond_1

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object v1, p1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {v0, v1}, Lj$/time/LocalTime;->compareTo(Lj$/time/LocalTime;)I

    move-result v0

    if-nez v0, :cond_1

    .line 0
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 0
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/LocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    iget-object v3, p1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, v3}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    iget-object p1, p1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1, p1}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final get(Lj$/time/temporal/ChronoField;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->get(Lj$/time/temporal/ChronoField;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->get(Lj$/time/temporal/ChronoField;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalQueries;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/ChronoField;)I

    move-result p1

    return p1
.end method

.method public final getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSecond()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public final getYear()I
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isAfter(Lj$/time/LocalDateTime;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/LocalDateTime;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 0
    :cond_1
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v3

    .line 0
    iget-object v0, p1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    if-nez v0, :cond_2

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    .line 0
    iget-object p1, p1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {p1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public final isBefore(Lj$/time/LocalDateTime;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/LocalDateTime;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/LocalDateTime;->compareTo0(Lj$/time/LocalDateTime;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 0
    :cond_1
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v3

    .line 0
    iget-object v0, p1, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {v0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    .line 0
    iget-object p1, p1, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    invoke-virtual {p1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public final isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/temporal/ChronoField;

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minusDays(J)Lj$/time/LocalDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    iget-object p2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    :goto_0
    const-wide/16 p1, 0x1

    .line 0
    iget-object v1, v0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    iget-object p2, v0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    iget-object v1, v0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    goto :goto_1

    :cond_2
    neg-long p1, p1

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    iget-object p2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    if-ne v0, p1, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_3
    new-instance v0, Lj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    :goto_1
    return-object v0
.end method

.method public final plusSeconds(J)Lj$/time/LocalDateTime;
    .locals 11

    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    const-wide/16 v1, 0x0

    or-long v3, p1, v1

    or-long/2addr v3, v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 0
    iget-object p1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    goto :goto_1

    :cond_0
    const-wide v3, 0x4e94914f0000L

    const-wide/32 v5, 0x15180

    div-long v7, p1, v5

    add-long/2addr v7, v1

    add-long/2addr v7, v1

    add-long/2addr v7, v1

    const/4 v9, 0x1

    int-to-long v9, v9

    mul-long v7, v7, v9

    rem-long/2addr p1, v5

    const-wide/32 v5, 0x3b9aca00

    mul-long p1, p1, v5

    add-long/2addr p1, v1

    add-long/2addr p1, v1

    add-long/2addr p1, v1

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    mul-long p1, p1, v9

    add-long/2addr p1, v1

    invoke-static {p1, p2, v3, v4}, Lj$/util/function/Function$-CC;->m$3(JJ)J

    move-result-wide v5

    add-long/2addr v5, v7

    invoke-static {p1, p2, v3, v4}, Lj$/util/function/Function$-CC;->m$1(JJ)J

    move-result-wide p1

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    iget-object p1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v5, v6}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 0
    :goto_1
    iget-object p2, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    if-ne p2, p1, :cond_2

    move-object p2, p0

    goto :goto_2

    :cond_2
    new-instance p2, Lj$/time/LocalDateTime;

    invoke-direct {p2, v0, p1}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    :goto_2
    return-object p2
.end method

.method public final query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localDate()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    return-object p1

    .line 0
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->localTime()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 0
    iget-object p1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    goto :goto_1

    .line 0
    :cond_2
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 0
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object p1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    goto :goto_1

    .line 0
    :cond_3
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    move-result-object v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, p1}, Lj$/time/temporal/TemporalQueries;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    goto :goto_0

    .line 0
    :cond_0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public final toEpochSecond(Lj$/time/ZoneOffset;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 0
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "offset"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toLocalDate()Lj$/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    return-object v0
.end method

.method public final toLocalTime()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/LocalDateTime;->date:Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/LocalDateTime;->time:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
